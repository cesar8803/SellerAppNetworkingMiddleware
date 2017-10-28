//
//  UrlHandlerMW.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 8/29/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation

public class MiddlewareConnection{
    private init(){}
    
    public static let sharedInstance:MiddlewareConnection = MiddlewareConnection()
    
    public var baseURLString:String = "" {
        didSet {
            // Updating the URLs with the new middleware IP assigned in the Middleware Connection Singleton
            BackendUrlManager.Current.updateUrls()
        }
    }
    
}
