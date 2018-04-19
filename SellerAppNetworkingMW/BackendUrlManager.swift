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
        case shoppingList
        case cleanCache
        case remissionCE
        case remissionCC
        case remissionMDR
        case newGiftRegistryPLP
        case searchAdvance
    }
    
    fileprivate static let SERVICE_CONTEXT:[String] = [
        "Middleware/rest/service/endeca-home?",                                 //homeService
        "appclienteservices/services/account/login?",                           //logIn
        "appclienteservices/services/account/logout",                           //logOut
        "Middleware/rest/service/menu?",                                        //Menu
        "Middleware/rest/service/endeca-home?",                                 //Home
        "Middleware/rest/service/plp?",                                         //plp
        "Middleware/rest/service/v2/lista-evento",                              //GiftRegistryPLP
        "Middleware/rest/service/type-ahead?",                                  //type-ahead
        "Middleware/rest/service/remisiones?",                                  //orders
        "Middleware/rest/service/pdp-simple",                                   // PDP
        "Middleware/rest/service/consultar-imagenes-skus",                      //imagesSKUs
        "Middleware/rest/service/shopping-list",                                //shopping list
        "Middleware/rest/service/flush",                                        //Clean Cache
        "Middleware/rest/service/remision-domicilio",                           //RemissionCE
        "Middleware/rest/service/remision-click-collect",                       //RemissionCC
        "Middleware/rest/service/remision-mesa-regalos",                        //RemissionMDR
        "appclienteservices/services/v2/gifttable/search/getEventDetail?",      //NewGiftRegsitryPLP
        "appclienteservices/services/v2/gifttable/search/getEventsBySearchableAdvance?", //SearchAdvance
    ]
    
    // The array of all the services url's.
    fileprivate var serviceUrls:[String] = [String]();
    
    fileprivate func createUrls() {
        let servicesCount = BackendUrlManager.SERVICE_CONTEXT.count
        for index in 0..<servicesCount {
            //let nextUrl:String = "\(backendProtocol)\(backendHost)\(BackendUrlManager.SERVICE_CONTEXT[index])";
            let nextUrl:String = MiddlewareConnection.sharedInstance.baseURLString + "/" + BackendUrlManager.SERVICE_CONTEXT[index]
            serviceUrls.append(nextUrl)
        }
    }
    
    // Updating the URLs with the new middleware IP assigned in the Middleware Connection Singleton
    func updateUrls() {
        if !serviceUrls.isEmpty {
            serviceUrls.removeAll()
        }
        createUrls()
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
    }
    
    // Singleton intance.
    static let Current:BackendUrlManager = BackendUrlManager()
    
}

