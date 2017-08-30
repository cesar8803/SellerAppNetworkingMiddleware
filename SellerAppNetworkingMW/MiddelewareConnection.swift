//
//  UrlHandlerMW.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 8/29/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation

public class MiddelewareConnection{
    private init(){}
    public var url:String = ""
    public static  let sharedInstance:MiddelewareConnection = MiddelewareConnection()
}
