//
//  PLPLevel.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/27/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class PLPLevel: Mappable{
    public var pageType: String?
    public var WARNING: String?
    public var plpResults: PLPResults?
    public var isSuccessful: Int?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        pageType <- map["pageType"]
        WARNING <- map["WARNING"]
        plpResults <- map["plpResults"]
        isSuccessful <- map["isSuccessful"]
    }
}
