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
    public class func getHome(completion:@escaping (_ dataResponse: Home)-> Void, completionError: @escaping ErrorStringHandler )
    {
        AsyncClientMW.getRequestExecute(BackendUrlManager.ServiceUrlsId.home, completion: { (home) in
            completion(home)
        }) { (msg) in
            completionError(msg)
            
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
    
    
    
    /************** Petición GET con Parametros **********************/
    class func getRequestExecute<T:Mappable>(_ type:BackendUrlManager.ServiceUrlsId, parameters: Parameters, completion:@escaping (_ dataResponse:T) -> Void, errorCompletition: @escaping (_ errorString:String) -> Void){
        
        let url = BackendUrlManager.Current.getUrl(type)
        Alamofire.request(url, method: .get, parameters: parameters).responseObject { (response: DataResponse<T>) in
            
            if response.result.isSuccess{
                let responseService = response.result.value
                completion(responseService!)
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
    class func putRequestExecute<T:Mappable>(_ _Type:BackendUrlManager.ServiceUrlsId, _Parameters: Parameters, _ViewLoader:Bool, _MsjLoader: String,_Completion:@escaping (_ _putRequest: T) -> Void, _ErrorCompletition: @escaping (_ errorString:String) -> Void){
        
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
    
}
