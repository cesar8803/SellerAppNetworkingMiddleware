//
//  AsyncClientMW.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/24/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation

import AlamofireObjectMapper
import Alamofire
import ObjectMapper


public typealias ErrorStringHandler = (_ errorString:String) -> Void

public class AsyncClientMW
{
    
    // Request for home
    public class func getHome(parameters: Parameters,completion:@escaping (_ dataResponse: Home)-> Void, completionError: @escaping ErrorStringHandler )
    {
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.home, parameters: parameters, completion: { (home) in
            completion(home)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    //Request for search product
    
    public class func getProductWithString(_ text: String, completion: @escaping (_ dataResponse: MiddlewareResponse) -> Void, completionError: @escaping ErrorStringHandler){
        
        let params: Parameters = ["search-string" : text]
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.typeahead, parameters: params, completion: { (response) in
            completion(response)
        }) { (errorMessage) in
            completionError(errorMessage)
        }
    }
    
    // Request a list of categoryInfo for categoryId
    // - parameter categoryId:        id for the categegory. Default value is root and return the first level .
    public class func getMenuLevel(categoryId:String = "root", completion:@escaping (_ dataResponse:MenuLevel) -> Void, completionError:@escaping ErrorStringHandler)
    {
        let params:Parameters = ["category-id":categoryId]
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.categories, parameters: params, completion: { (menu:MenuLevel) in
            completion(menu)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    public class func getOrdersComplet(orden:String, terminalCode: String, storeCode: String, completion:@escaping (_ dataResponse:Productlistorder) -> Void, completionError:@escaping ErrorStringHandler)
    {
        let orderType: String = (orden.hasPrefix("90") ? "OV" : "RM")
        let params:Parameters = ["orden":orden, "indicador":orderType, "terminal-code":terminalCode, "store-code":storeCode]
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.orders, parameters: params, completion: { (orders:Productlistorder) in
            completion(orders)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    
    public class func getImagesOrders(sku:String, completion:@escaping (_ dataResponse:Orderslevel) -> Void, completionError:@escaping ErrorStringHandler)
    {
        let params:Parameters = ["sku":sku]
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.orders, parameters: params, completion: { (orders:Orderslevel) in
            completion(orders)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    
    public class func getPLP(mandatory:PLP_MandatoryParams, parameters:[PLP_Optional<Any>]?, completion:@escaping (_ dataResponse:PLPLevel) -> Void, completionError:@escaping ErrorStringHandler)
    {
        var params = mandatory.getParameters()
        
        if let p = parameters
        {
            for plp_opt in p {
                params[plp_opt.type.rawValue] = plp_opt.value
            }
        }
        
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.plp, parameters: params, completion: { (plp_level:PLPLevel) in
            completion(plp_level)
        }) { (msg) in
            completionError(msg)
        }
        
    }
    
    
    // ***** GIFT-REGISTRY ***** //
    
    public class func getGiftRegistryPLP(mandatory: GiftRegistry_MandatoryParams, parameters: [GiftRegistry_Optional<Any>]?, completion: @escaping (_ dataResponse: GiftRegistryPLPLevel) -> Void, completionError: @escaping ErrorStringHandler) {
        
        var params = mandatory.getParameters()
        
        if let pOptionals = parameters {
            
            for gr_opt in pOptionals {
                params[gr_opt.type.rawValue] = gr_opt.value
            }
            
        }
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.giftRegistryPLP, parameters: params, completion: { (GiftRegistryPLP_level: GiftRegistryPLPLevel) in
            completion(GiftRegistryPLP_level)
        }) { (msg) in
            completionError(msg)
        }
        
    }
    
    
    // ******** Shopping List ***** //
    
    public class func getShoppingList(parameters: Parameters, completion: @escaping (_ dataResponse: ShoppingListResponse) -> Void, completionError: @escaping ErrorStringHandler) {
        
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.shoppingList, parameters: parameters, completion: { (shoppingListResponse: ShoppingListResponse) in
            completion(shoppingListResponse)
        }) { (msg) in
            completionError(msg)
        }
        
    }
    
    
    // ***** PDP ***** //
    
    public class func getPDP(mandatory: PDP_MandatoryParams, parameters: [PDP_Optional<Any>]?, completion: @escaping (_ dataResponse: PDPLevel) -> Void, completionError: @escaping ErrorStringHandler) {
        
        var params = mandatory.getParameters()
        
        if let pdpOptionals = parameters {
            for pdp_opt in pdpOptionals {
                params[pdp_opt.type.rawValue] = pdp_opt.value
            }
        }
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.pdp, parameters: params, completion: { (PDP_level: PDPLevel) in
            completion(PDP_level)
        }) { (message) in
            completionError(message)
        }
        
    }
    
    public class func getPDP3(mandatory: PDP_MandatoryParams, parameters: [PDP_Optional<Any>]?, completion: @escaping (_ dataResponse: PDPLevel) -> Void, completionError: @escaping ErrorStringHandler) {
        
        var params = mandatory.getParameters()
        
        if let pdpOptionals = parameters {
            for pdp_opt in pdpOptionals {
                params[pdp_opt.type.rawValue] = pdp_opt.value
            }
        }
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.pdp3, parameters: params, completion: { (PDP_level: PDPLevel) in
            completion(PDP_level)
        }) { (message) in
            completionError(message)
        }
        
    }
    
    // ***** Clean Cache ***** //
    
    public class func cleanCache(completion: @escaping (_ completion: FlushLevel) -> (), completionError: @escaping ErrorStringHandler) {
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.cleanCache, completion: { (flush_Level: FlushLevel) in
            completion(flush_Level)
        }) { (message) in
            completionError(message)
        }
    }
    
    
    //Public function getSKU's Images
    // skus: String of SKUs separated by ~
    public class func getImagesFor(skus:String, terminalCode: String, storeCode: String, completion: @escaping (_ dataResponse: SKUsImages) -> Void, completionError: @escaping ErrorStringHandler)
    {
        let params:Parameters = ["sku":skus, "terminal-code":terminalCode, "store-code":storeCode]
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.imagesSKUs, parameters: params, completion: { (response) in
            completion(response)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    /************** Petición GET con Parametros **********************/
    class func getRequestExecute<T:Mappable>(_ type:BackendUrlManager.ServiceUrlsId, parameters: Parameters, completion:@escaping (_ dataResponse:T) -> Void, errorCompletition: @escaping (_ errorString:String) -> Void){
        
        let url = BackendUrlManager.Current.getUrl(type)
        print(url)
        print(parameters)
        Alamofire.request(url, method: .get, parameters: parameters).responseObject { (response: DataResponse<T>) in
            if response.result.isSuccess{
                let responseService = response.result.value
                print(response.description)
                if responseService is MWResponse  {
                    // Caso la respuesta es de tipo MWResponse
                    let mwResponse : MWResponse = responseService as! MWResponse
                    if mwResponse.errors != nil && mwResponse.errors!.count > 0{
                        // Caso la respuesta tiene error middleware
                        var errorsString : String = ""
                        for mwError in mwResponse.errors!{
                            errorsString = (errorsString == ""  ? "":"\n") + errorsString  + (mwError.descError ?? "Error servicio.")
                        }
                        errorCompletition(errorsString)
                    }else{
                        // Caso la respuesta no tiene error middleware
                        completion(responseService!)
                    }
                }else{
                    // Caso la respuesta no es de tipo MWResponse
                    completion(responseService!)
                }
                
            } else {
                errorCompletition((response.result.error?.localizedDescription)!)
            }
        }
    }
    
    
    
    /************** Petición GET **********************/
    class func getRequestExecute<T:Mappable>(_ type:BackendUrlManager.ServiceUrlsId, completion:@escaping (_ dataResponse:T) -> Void, errorCompletition: @escaping (_ errorString:String) -> Void){
        
        let url = BackendUrlManager.Current.getUrl(type)
        
        Alamofire.request(url, method: .get).responseObject { (response: DataResponse<T>) in
            
            if response.result.isSuccess{
                let responseService = response.result.value
                completion(responseService!)
            } else {
                errorCompletition((response.result.error?.localizedDescription)!)
            }
        }
    }
    
    
    /************** Petición POST **********************/
    class func postRequestExecuteWithTimeOut<T:Mappable>(_ _Type:BackendUrlManager.ServiceUrlsId, _Parameters: Parameters, _ViewLoader:Bool, _MsjLoader: String,_Completion:@escaping (_ _postRequest: T) -> Void, _ErrorCompletition: @escaping (_ errorString:String) -> Void){
        
        let url:URL! = URL(string: BackendUrlManager.Current.getUrl(_Type))
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.timeoutInterval = 300 // 10 secs
        //let values = ["key": "value"]
        request.httpBody = try! JSONSerialization.data(withJSONObject: _Parameters, options: [])
        
        Alamofire.request(request).responseObject { (response: DataResponse<T>) in
            
            if response.result.isSuccess{
                let responseService = response.result.value
                _Completion(responseService!)
                
            }else{
                _ErrorCompletition((response.result.error?.localizedDescription)!)
            }
        }
    }
    
    /************** Petición POST Serializa un objeto JSON**********************/
    
    class func postRequestExecute<T:Mappable>(_ _Type:BackendUrlManager.ServiceUrlsId, _Parameters: Parameters!, _Completion:@escaping (_ _postRequest: T) -> Void, _ErrorCompletition: @escaping (_ errorString:String) -> Void)
    {
        let url = URL(string: BackendUrlManager.Current.getUrl(_Type))
        let request = NSMutableURLRequest(url: url!)
        
        request.httpMethod = "POST"
        request.httpBody = try! JSONSerialization.data(withJSONObject: _Parameters, options: [])
        
        
        Alamofire.request(url!, method: .post, parameters: _Parameters, encoding: JSONEncoding.default).responseObject { (response: DataResponse<T>) in
            
            if response.result.isSuccess{
                let responseService = response.result.value
                _Completion(responseService!)
            }else{
                _ErrorCompletition((response.result.error?.localizedDescription)!)
            }
        }
    }
    
    
    /************** Petición PUT **********************/
    class func putRequestExecute<T:Mappable>(_ _Type:BackendUrlManager.ServiceUrlsId, _Parameters: Parameters, _ViewLoader:Bool, _MsjLoader: String,_Completion:@escaping (_ putRequest: T) -> Void, _ErrorCompletition: @escaping (_ errorString:String) -> Void){
        
        
        let _Url = BackendUrlManager.Current.getUrl(_Type)
        Alamofire.request(_Url, method: .put, parameters: _Parameters, encoding: URLEncoding.default).responseObject { (response: DataResponse<T>) in
            
            if response.result.isSuccess{
                let responseService = response.result.value
                _Completion(responseService!)
                
            }else{
                _ErrorCompletition((response.result.error?.localizedDescription)!)
            }
        }
    }
    
    /**********************************PETICION DELETE***********************************/
    
    class func deleteRequestExecute<T:Mappable>(_ _Type:BackendUrlManager.ServiceUrlsId, _Parameters: Parameters!, _Completion:@escaping (_ _postRequest: T) -> Void, _ErrorCompletition: @escaping (_ errorString:String) -> Void)
    {
        let url = URL(string: BackendUrlManager.Current.getUrl(_Type))
        
        let headers = [
            "Content-Type": "application/x-www-form-urlencoded"
        ]
        
        Alamofire.request(url!, method: .delete, parameters: _Parameters, encoding: URLEncoding.default, headers: headers).responseObject { (response: DataResponse<T>) in
            
            if response.result.isSuccess{
                let responseService = response.result.value
                _Completion(responseService!)
            }else{
                _ErrorCompletition((response.result.error?.localizedDescription)!)
                
            }
        }
    }
    
    
    /*
     //MARK: Login
     class func login(_ typeURL:BackendUrlManager.ServiceUrlsId, user:String, pwd:String, completion:@escaping (_ typeO:LoginResultObject?) -> Void)
     {
     
     let url = BackendUrlManager.Current.getUrl(typeURL)+"user="+user+"&password="+pwd
     let credentialData = "\(user):\(pwd)".data(using: String.Encoding.utf8)!
     let base64Credentials = credentialData.base64EncodedString(options: [])
     let headers = ["Authorization": "Basic \(base64Credentials)"]
     
     Alamofire.request(url, method: .post, headers: headers).responseObject{ (response: DataResponse<LoginResultObject>) in
     if response.result.isSuccess{
     let responseService = response.result.value
     completion(responseService!)
     }else{
     completion(nil)
     }
     }
     }
     
     //MARK: Logout
     class func logOut(_ typeURL:BackendUrlManager.ServiceUrlsId, viewController:UIViewController, completion:@escaping (_ typeO:LogoutResultObject) -> Void)
     {
     //let login:LoginViewController = LoginViewController()
     let url = BackendUrlManager.Current.getUrl(typeURL)
     
     Alamofire.request(url, method: .post).responseObject{ (response: DataResponse<LogoutResultObject>) in
     if response.result.isSuccess{
     let responseService = response.result.value
     if (responseService?.status?.status == nil && responseService?.status?.statusCode == 0)
     {
     showSimpleAlert("Aviso", message: "No se pudo cerrar sesión. Por favor intenta nuevamente.", viewController: viewController)
     }
     else
     {
     completion(responseService!)
     let keychainWrapper = KeychainWrapper(serviceName: KeychainWrapper.standard.serviceName)
     
     // let keychainWrapper = KeychainWrapper(serviceName: KeychainWrapper.defaultKeychainWrapper.serviceName)
     _ = keychainWrapper.removeAllKeys()
     }
     }
     else
     {
     showSimpleAlert("Aviso", message: "El servicio móvil de Liverpool.com.mx ha encontrado un problema. Por favor inténtelo de nuevo en breve.", viewController: viewController)
     }
     }
     }
     */
    
    
    class func showSimpleAlert(_ title: String, message: String, viewController:UIViewController){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        viewController.present(alert, animated: true, completion: nil)
    }
    
    //MARK: RemissionCC
    class public func  createOrderCC(
        parameters: [AnyObject],
        storeCode:String,
        terminalCode:String,
        remision:String,
        documento:String,
        vendedor:String,
        fecha:String,
        completion:@escaping (_ dataResponse: ResponseCreaActualizaOVREMMW)-> Void,
        completionError: @escaping ErrorStringHandler )
    {
        let params : String = getRequestUrlForAdapter( parameters: parameters as AnyObject, isArray:true)
        print(params)
        
        
        let paramsRequest:Parameters = ["objeto": params as Any,
                                        "terminal-code": terminalCode as Any,
                                        "store-code": storeCode as Any]
        
        print(paramsRequest)
        
        AsyncClientMW.getRequestExecute(
            BackendUrlManager.ServiceUrlsId.remissionCC,
            parameters: paramsRequest,
            completion: { (Response : ResponseCreaActualizaOVREMMW) in completion(Response) })
        { (msg) in
            completionError(msg)
        }
    }
    
    //MARK: RemissionMKP
    class public func  createOrderMKP(
        parameters: [AnyObject],
        storeCode:String,
        terminalCode:String,
        remision:String,
        documento:String,
        vendedor:String,
        fecha:String,
        completion:@escaping (_ dataResponse: ResponseCreaActualizaOVREMSterlingMW)-> Void,
        completionError: @escaping ErrorStringHandler )
    {
        let params : String = getRequestUrlForAdapter( parameters: parameters as AnyObject, isArray:true)
        print(params)
        
        
        let paramsRequest:Parameters = ["objeto": params as Any,
                                        "terminal-code": terminalCode as Any,
                                        "store-code": storeCode as Any]
        
        print(paramsRequest)
        
        AsyncClientMW.getRequestExecute(
            BackendUrlManager.ServiceUrlsId.remissionCE,
            parameters: paramsRequest,
            completion:
            { (Response : ResponseCreaActualizaOVREMSterlingMW) in
                completion(Response)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    //MARK: RemissionCE
    class public func  createOrderCE(
        parameters: [AnyObject],
        storeCode:String,
        terminalCode:String,
        remision:String,
        documento:String,
        vendedor:String,
        fecha:String,
        completion:@escaping (_ dataResponse: ResponseCreaActualizaOVREMSterlingMW)-> Void,
        completionError: @escaping ErrorStringHandler )
    {
        let params : String = getRequestUrlForAdapter( parameters: parameters as AnyObject, isArray:true)
        print(params)
        
        
        let paramsRequest:Parameters = ["objeto": params as Any,
                                        "terminal-code": terminalCode as Any,
                                        "store-code": storeCode as Any]
        
        print(paramsRequest)
        
        AsyncClientMW.getRequestExecute(
            BackendUrlManager.ServiceUrlsId.remissionCE,
            parameters: paramsRequest,
            completion:
            { (Response : ResponseCreaActualizaOVREMSterlingMW) in
                completion(Response)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    //MARK: RemissionMDR
    class public func  createOrderMDR(
        parameters:[Any],
        storeCode:String,
        terminalCode:String,
        remision:String,
        documento:String,
        vendedor:String,
        fecha:String,
        completion:@escaping (_ dataResponse: ResponseCreaActualizaOVREMSterlingMW)-> Void,
        completionError: @escaping ErrorStringHandler )
    {
        let params : String = getRequestUrlForAdapter( parameters: parameters as AnyObject, isArray:true)
        print(params)
        
        
        let paramsRequest:Parameters = ["objeto": params as Any,
                                        "terminal-code": terminalCode as Any,
                                        "store-code": storeCode as Any]
        
        print(paramsRequest)
        
        AsyncClientMW.getRequestExecute(
            BackendUrlManager.ServiceUrlsId.remissionMDR,
            parameters: paramsRequest,
            completion:
            { (Response : ResponseCreaActualizaOVREMSterlingMW) in
                completion(Response)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    //MARK: urlRequest adapter
    class func getRequestUrlForAdapter( parameters: AnyObject, isArray:Bool = false) -> String
    {
        let encodedParameters = MiddlewareEncodedParameterDictionary(parameters: parameters, isArray: isArray)
        return  "\(encodedParameters)"
    }
    class func MiddlewareEncodedParameterDictionary(parameters: AnyObject , isArray: Bool = false) -> String
    {
        var data:NSData!
        do {
            data = try JSONSerialization.data(withJSONObject: parameters, options: JSONSerialization.WritingOptions()) as NSData
        }
        catch {
            return ""
        }
        var jsonString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)!
        //jsonString = jsonString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)! as NSString
        
        // BEFORE
        //jsonString = jsonString.addingPercentEscapes(using: String.Encoding.utf8.rawValue)! as NSString
        
        
        //There must be a better way to handle the URL expecting a plus sign to be encoded, even when a string value
        //jsonString = jsonString.replacingOccurrences(of: "+", with: "%2B") as NSString
        //Need to wrap the JSON in [] for the Middleware server
        if !isArray {
            jsonString = "[\(jsonString)]" as NSString
        }
        return jsonString as String
    }
    
    // ***** GET NEW GIFT REGISTRY ***** //
    
    public class func getNewPLPGiftRegistry(eventNumber:String, searchType: String, filter: String, orderBy: String, terminalCode: String, storeCode: String, completion:@escaping (_ dataResponse:EventDetail) -> Void, completionError:@escaping ErrorStringHandler)
    {
        let params:Parameters = [searchType:eventNumber, "filterByCategory":filter, "orderBy":orderBy, "terminal-code":terminalCode, "store-code":storeCode]
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.newGiftRegistryPLP, parameters: params, completion: { (eventList:EventDetail) in
            if eventList.status != nil && eventList.status!.statusCode == 0{
                completion(eventList)
            }else {
                completionError("Error")
            }
            
        }) { (msg) in
            completionError(msg)
        }
    }
    
    public class func getNewPLPGiftRegistry(
        eventNumber:String,
        searchType: String,
        filter: String,
        orderBy: String,
        completion: @escaping (_ dataResponse:EventDetail) -> Void,
        completionError: @escaping ErrorStringHandler)
    {
        let params:Parameters = [searchType:eventNumber, "filterByCategory":filter, "orderBy":orderBy]
        
        AsyncClientMW.getRequestExecute(
            BackendUrlManager.ServiceUrlsId.newGiftRegistryPLP,
            parameters: params,
            completion: { (eventList:EventDetail) in
                completion(eventList)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    //MARK: - Get Event Detail passing from MiddleWare
    public class func getEventDetail(
        eventId     : String,
        categoryId  : String,
        priceRange  : String,
        currentPage : String?,
        isShowAll   : Bool,
        terminalCode: String,
        storeCode   : String,
        completion  :@escaping (_ dataResponse:EventSearchDetail) -> Void, completionError:@escaping ErrorStringHandler)
    {
        let params:Parameters = ["eventId":eventId,
                                 "categoryId":categoryId,
                                 "priceRange":priceRange,
                                 "currentPage":currentPage ?? "1",
                                 "isShowAll":isShowAll,
                                 "terminal-code":terminalCode,
                                 "store-code":storeCode]
        
        AsyncClientMW.getRequestExecute(
            BackendUrlManager.ServiceUrlsId.newSearchDetail,
            parameters: params,
            completion: {
                (eventList:EventSearchDetail) in
                completion(eventList)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    //MARK: - Get Event Detail by-passing MiddleWare
    public class func getEventDetail(
        eventId     : String,
        categoryId  : String,
        priceRange  : String,
        currentPage : String?,
        isShowAll   : Bool,
        completion  :@escaping (_ dataResponse:EventSearchDetail) -> Void, completionError:@escaping ErrorStringHandler)
    {
        let params:Parameters = ["eventId":eventId,
                                 "categoryId":categoryId,
                                 "priceRange":priceRange,
                                 "currentPage":currentPage ?? "1",
                                 "isShowAll":isShowAll]
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.newSearchDetail, parameters: params, completion: { (eventList:EventSearchDetail) in
            completion(eventList)
        }) { (msg) in
            completionError(msg)
        }
    }
    
    //MARK: - Get Events List Advance passing from MiddleWare
    public class func getEventList(
        name                : String,
        lastName            : String,
        lastName2           : String?,
        eventType           : String?,
        eventDate           : String?,  // yyyy/MM/dd
        pageNum             : String?,
        resultsPerpage      : String?,
        terminalCode        : String,
        storeCode           : String,
        completion:@escaping (_ dataResponse:EventSearch) -> Void,
        completionError:@escaping ErrorStringHandler)
    {
        var params:Parameters = [:]
        params["firstNameOrNickName"]       = name
        params["lastNameOrPaternalName"]    = lastName
        params["motherName"]                = lastName2 ?? ""
        params["eventDate"]                 = eventDate ?? "" // yyyy/MM/dd
        params["eventType"]                 = eventType ?? ""
        params["pageNum"]                   = pageNum != nil && pageNum != "" ? pageNum :"1"
        params["resultsPerPage"]            = resultsPerpage != nil && resultsPerpage != "" ? resultsPerpage! :"30"
        params["terminal-code"] = terminalCode
        params["store-code"] = storeCode
        
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.searchAdvance,
                                        parameters: params,
                                        completion: { (eventsList:EventSearch) in
                                            completion(eventsList) })
        { (msg) in completionError(msg) }
    }
    
    //MARK: - Get Events List Advance by-passing MiddleWare
    public class func getEventList(
        name                : String,
        lastName            : String,
        lastName2           : String?,
        eventType           : String?,
        eventDate           : String?,  // yyyy/MM/dd
        pageNum             : String?,
        resultsPerpage      : String?,
        completion:@escaping (_ dataResponse:EventSearch) -> Void,
        completionError:@escaping ErrorStringHandler)
    {
        var params:Parameters = [:]
        params["firstNameOrNickName"]       = name
        params["lastNameOrPaternalName"]    = lastName
        params["motherName"]                = lastName2 ?? ""
        params["eventDate"]                 = eventDate ?? "" // yyyy/MM/dd
        params["eventType"]                 = eventType ?? ""
        params["pageNum"]                   = pageNum != nil && pageNum != "" ? pageNum :"1"
        params["resultsPerPage"]            = resultsPerpage != nil && resultsPerpage != "" ? resultsPerpage! :"30"
        
        
        AsyncClientMW.getRequestExecute( BackendUrlManager.ServiceUrlsId.searchAdvance,
                                         parameters: params,
                                         completion: { (eventsList:EventSearch) in
                                            completion(eventsList) })
        { (msg) in completionError(msg) }
    }
    
    //MARK:- PDP Market place
    public class func getInventoryMKP(
        skuId               : String,
        offerId             : String,
        completionSuccess   : @escaping (_ dataResponse:InventoryMKP) -> Void,
        completionError     : @escaping ErrorStringHandler)
    {
        var params:Parameters = [:]
        params["sku-list"]       = [skuId:offerId]
        
        AsyncClientMW.getRequestExecute( BackendUrlManager.ServiceUrlsId.pdpMarketPlaceInventory,
                                         parameters: params,
                                         completion: { (skusITR:InventoryMKP) in
                                            completionSuccess(skusITR) })
        { (msg) in completionError(msg) }
    }
    
    public class func getInventoriesMKP(
        skuIdOfferIdList    : [String:String],
        completionSuccess   : @escaping (_ dataResponse:InventoryMKP) -> Void,
        completionError     : @escaping ErrorStringHandler)
    {
        var params:Parameters = [:]
        params["sku-list"]       = skuIdOfferIdList
        
        AsyncClientMW.getRequestExecute( BackendUrlManager.ServiceUrlsId.pdpMarketPlaceInventory,
                                         parameters: params,
                                         completion: { (skusITR: InventoryMKP) in
                                            completionSuccess(skusITR) })
        { (msg) in completionError(msg) }
    }
    
    //    {"skuList":[{"skuId":"1033866981","quantity":500,"offerId":"2040","stockStatus":"IN_STOCK","s":0},{"skuId":"1033866981","quantity":0,"offerId":"2007","stockStatus":"OUT_OF_STOCK","s":0},{"skuId":"1033245790","quantity":0,"offerId":"","stockStatus":"OUT_OF_STOCK","s":0},{"quantity":0,"s":1,"err":"Mandatory information is missing"}]}
    
    public class func getOffertDetail(
        sku                 : String,
        completion          : @escaping (_ dataResponse: OfferDetailResponse) -> Void,
        completionError     : @escaping ErrorStringHandler)
    {
        let params:Parameters = ["skuId":sku]
        
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.pdpMarketPlaceOfferDetail,
                                        parameters: params,
                                        completion: { (offerResponse: OfferDetailResponse) in
                                            completion(offerResponse) })
        { (message) in completionError(message) }
    }
    
    public class func  getSellerDetail(sku:String, offset:Int, completionSuccess   : @escaping (_ dataResponse:SellerDetailsResponse) -> Void, completionError: @escaping ErrorStringHandler){
         let params:Parameters = ["skuId":sku]
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.sellerDetails, parameters: params,
                                        completion: { (sellerDetail: SellerDetailsResponse) in
                                        completionSuccess(sellerDetail) })
        { (msg) in completionError(msg) }
    }

}

