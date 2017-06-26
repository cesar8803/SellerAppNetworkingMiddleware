//
//  CategoryInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/24/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class CategoryInfo: Mappable{
    var contentType: String?
    var name: String?
    var hasChildren: Int?
    var image: String?
    var isBrandLanding: Int?
    var order: Int?
    var isBrand: Int?
    var redirectsToWeb: Int?
    var categoryId: String?
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        contentType <- map["contentType"]
        name <- map["name"]
        hasChildren <- map["hasChildren"]
        image <- map["image"]
        isBrandLanding <- map["isBrandLanding"]
        order <- map["order"]
        isBrand <- map["isBrand"]
        redirectsToWeb <- map["redirectsToWeb"]
        categoryId <- map["categoryId"]
    }
}
