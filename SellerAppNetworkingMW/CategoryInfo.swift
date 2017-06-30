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
    public var contentType: String?
    public var name: String?
    public var hasChildren: Int?
    public var image: String?
    public var isBrandLanding: Int?
    public var order: Int?
    public var isBrand: Int?
    public var redirectsToWeb: Int?
    public var categoryId: String?
    
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
