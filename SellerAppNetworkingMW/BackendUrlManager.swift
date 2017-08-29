//
//  BackendUrlManager.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/24/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation

class BackendUrlManager : NSObject{
    
    enum ServiceUrlsId : Int {
        case homeService
        case logIn
        case logOut
        case categories
        case home
        case plp
        case giftRegistryPLP
        case typeahead
        case orders
        case pdp
        case imagesSKUs
    }
    
    fileprivate static let SERVICE_CONTEXT:[String] = [
        "appclienteservices/services/endeca-home",                              //homeService
        "appclienteservices/services/account/login?",                           //logIn
        "appclienteservices/services/account/logout",                           //logOut
        "Middleware/rest/service/menu?",                                        //Menu
        "Middleware/rest/service/home",                                         //Home
        "Middleware/rest/service/plp?",                                         //plp
        "Middleware/rest/service/lista-evento",                                  //GiftRegistryPLP
        "Middleware/rest/service/type-ahead?",                      //type-ahead
        "Middleware/rest/service/remisiones?",                      //orders
        "Middleware/rest/service/pdp",                                         // PDP
        "Middleware/rest/service/consultar-imagenes-skus"                       //imagesSKUs
    ]
    
    // The array of all the services url's.
    fileprivate var serviceUrls:[String] = [String]();
    
    fileprivate func createUrls() {
        let backendHost = "172.22.209.88:9090/"
        
        //let backendHost = "172.22.49.66:9090/"
        let backendProtocol = "http://"
        let servicesCount = BackendUrlManager.SERVICE_CONTEXT.count
        for index in 0..<servicesCount {
            //let nextUrl:String = "\(backendProtocol)\(backendHost)\(BackendUrlManager.SERVICE_CONTEXT[index])";
            let nextUrl:String = "\(MWUrlHandler.sharedInstance.url)/\(BackendUrlManager.SERVICE_CONTEXT[index])"
            serviceUrls.append(nextUrl)
        }
    }
    
    fileprivate func overrideUrls() {
        serviceUrls[ServiceUrlsId.homeService.rawValue] = "https://api.myjson.com/bins/18h1dv"
    }
    
    // Gets the indicated service url.
    func getUrl(_ urlId:ServiceUrlsId) -> String {
        let selectedUrl:String = serviceUrls[urlId.rawValue]
        return selectedUrl
    }
    
    // Private init to avoid several instances of this class.
    fileprivate override init() {
        super.init()
        self.createUrls()
        overrideUrls()
    }
    
    // Singleton intance.
    static let Current:BackendUrlManager = BackendUrlManager()
}
