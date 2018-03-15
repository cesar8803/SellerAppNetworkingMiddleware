//
//  MiddlewareServiceProvider.swift
//  Alamofire
//
//  Created by Stephane Gardon on 13/03/18.
//

import Foundation
import Alamofire

public class MiddlewareServiceProvider: MiddlewareServiceProtocol{
    
    var manager = SessionManager.default
    
    var customHostname: String = ""
    private let MiddlewareRuntimeEnvironment = "/invoke?"
    
    private enum Adapter: String {
        case Shipment = "Remisiones"
    }
    
    // SGA
    //  /invoke?adapter=Remisiones&procedure=Remisiones_wbi_consulta_orden&compressResponse=true&parameters=%5B%7B%22consulta_ordenRequest%22%3A%7B%22OrdenEntrega_Remision%22%3A%221030017301%22%2C%22IndicadorConsulta%22%3A%22T%22%7D%7D%5D
    
    private enum Procedure: String {
        // Shipment
        case CreateUpdateSOMSShipmentSterling   = "Remisiones_wbi_CrearActualizarOVREMSterling"
        case CreateUpdateSOMSShipment           = "Remisiones_wbi_CreaActualizaOVREM"
        case CreateShipment                     = "Remisiones_wbi_CrearOrden"
        case UpdateShipment                     = "Remisiones_wbi_ActualizaRemision"
        case CreateUpdateCC                     = "Remisiones_wbi_CrearActualizarOVREMCCBRK"
        
//        // SGA
//        case ConsultaOrden                      = "Remisiones_wbi_consulta_orden"
    }
    
    func parseMiddlewareResponse(_ response: DataResponse<Data>)->(MiddlewareResponse?, NSError?){
        
        if response.error != nil {
            return (nil, response.error! as NSError)
        }else{
            if let json = try? JSONSerialization.jsonObject(with: response.data!, options: .allowFragments) as? [String : Any]{
                if let wlResponse = MiddlewareResponse(JSON: json!){
                    return (wlResponse, nil)
                }else{
                    return (nil, NSError(domain: "Middleware.object", code: MiddlewareErrorCodes.MWResponseParser.rawValue, userInfo: [NSLocalizedDescriptionKey : "No se pudo crear el objeto Middleware Response"]))
                }
            }else{
                return (nil, NSError(domain: "json.parser", code: MiddlewareErrorCodes.JSONParser.rawValue, userInfo: [NSLocalizedDescriptionKey : "La respuesta no viene en el formato correcto"]))
            }
            
        }
        
        
    }
    
    
    public func createCCOrder(lada: String, phone: String, name: String, userId: String, token: String, products: [MiddlewareShippingProduct]?, storeNumber: String, storeNumberToSend: String, orderNumber: String, isNewCustomer: Bool,customerID: String, addressID: String ,isBigTicketOrder: Bool, email: String?, completion: @escaping (MiddlewareResponse?, NSError?) -> Void) {
        
        let paddedLada = String(format: "%03d", Int(lada) ?? 0)
        let charset = NSCharacterSet(charactersIn: "/%&=?$#+-~@<>|\\*,.()[]{}^!").inverted//NSCharacterSet(charactersInString: "/%&=?$#+-~@<>|\\*,.()[]{}^!").inverted
        
        if let orderLines = (products?.map {
            [
                "OrderedQty" : "\($0.quantity)",
                "Item" : [
                    "itemID" : $0.itemSKU,
                    "itemDesc" : $0.itemDescription.addingPercentEncoding(withAllowedCharacters: charset) ?? "" //.stringByAddingPercentEncodingWithAllowedCharacters(charset) ?? ""
                ],
                "LinePriceInfo" : [
                    "unitPrice" : $0.price
                ]
            ]
            }) {
            
            let order = [
                "OrderName" : storeNumber,
                "OrderType" : "Personal",
                "OrderNo" : orderNumber
            ]
            
            var setOrdenSterlingDictionary:  [String : Any] = [:]
            
            if !isBigTicketOrder {
                setOrdenSterlingDictionary = [
                    "Order" : order,
                    "OrderLines" : orderLines,
                ]
            }
            
            
            let params = [
            ["BusquedaClienteRequest":[
                            "Calle": "",
                            "Colonia": "",
                            "Cp": "",
                            "Estado": "",
                            "Lada": paddedLada,
                            "Nombre": name,
                            "Telefono": phone,
                            "IdUsuario":userId,
                    ]
                ],
                /*[
                 "inPassword" : "",
                 "inUser" : userId,
                 "inCadenaValidacion" : token,
                 "isNewStreet" : "False"
                 ],*/
                [
                    "CreaActualizaOVREMRequest": [
                        "Evento": "",
                        "IdDestinatatio": customerID,
                        "IdDireccionDestino": addressID,
                        "IdDireccionRemitente": "",
                        "IdRemision": orderNumber,
                        "IdRemitente": "",
                        "TipoEvento": "",
                        "Bandera_APV": "T",
                        "inUser" : userId,
                        "inCadenaValidacion" : token,
                        "email" : email ?? "",
                        "Usuario": userId
                    ],
                    "setOrdenSterling": setOrdenSterlingDictionary
                ],
                storeNumberToSend
                ] as [Any]
            
            let url = getRequestUrlForAdapter(adapter: .Shipment, procedure: .CreateUpdateCC, parameters: params as AnyObject, isArray: true)
            
            _ = manager.request(url).responseMiddleware
                { [weak self](response) in
                    guard let weakSelf = self else { return }
                    let (result, error) = weakSelf.parseMiddlewareResponse(response)
                    DispatchQueue.main.async {
                        completion(result, error)
                    }
            }
        }
        
    }
    
    private func getRequestUrlForAdapter(adapter: Adapter, procedure: Procedure, parameters: AnyObject, isArray:Bool = false) -> String
    {
        let encodedParameters = MiddlewareEncodedParameterDictionary(parameters: parameters, isArray: isArray)
        return self.customHostname + self.MiddlewareRuntimeEnvironment + "adapter=\(adapter.rawValue)&" + "procedure=\(procedure.rawValue)&" + "compressResponse=true&" + "parameters=\(encodedParameters)"
    }
    
    private func MiddlewareEncodedParameterDictionary(parameters: AnyObject , isArray: Bool = false) -> String
    {
        var data:NSData!
        do {
            data = try JSONSerialization.data(withJSONObject: parameters, options: JSONSerialization.WritingOptions()) as NSData
        }
        catch {
            return ""
        }
        var jsonString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)!
        jsonString = jsonString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)! as NSString
        
        // BEFORE
        //jsonString = jsonString.addingPercentEscapes(using: String.Encoding.utf8.rawValue)! as NSString
        
        
        //There must be a better way to handle the URL expecting a plus sign to be encoded, even when a string value
        jsonString = jsonString.replacingOccurrences(of: "+", with: "%2B") as NSString
        //Need to wrap the JSON in [] for the Middleware server
        if !isArray {
            jsonString = "[\(jsonString)]" as NSString
        }
        return jsonString as String
    }
    
}
