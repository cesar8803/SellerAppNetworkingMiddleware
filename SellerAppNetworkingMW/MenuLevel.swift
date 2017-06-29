//
//  MenuLevelObject.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/24/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MenuLevel: Mappable{
    public var name: String?
    public var isRoot: Int?
    public var isBrandLanding: Int?
    public var categoryInfo: [CategoryInfo]?
    public var isSuccessful: Int?
    public var categoryId: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        name <- map["name"]
        isRoot <- map["isRoot"]
        isBrandLanding <- map["isBrandLanding"]
        categoryInfo <- map["categoryInfo"]
        isSuccessful <- map["isSuccessful"]
        categoryId <- map["categoryId"]
    }
}
