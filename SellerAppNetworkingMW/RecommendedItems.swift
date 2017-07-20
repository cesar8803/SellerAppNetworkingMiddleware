//
//  RecommendedItems.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class RecommendedItems: Mappable {
    
    public var groupType: String?
    public var minimumListPrice: Int?
    public var displayName: String?
    public var largeImage: String?
    public var maximumPromoPrice: Int?
    public var salePrice: Int?
    public var maximumListPrice: Int?
    public var promoPrice: Int?
    public var productId: String?
    public var listPrice: Int?
    public var minimumPromoPrice: Int?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        groupType <- map["groupType"]
        minimumListPrice <- map["minimumListPrice"]
        displayName <- map["displayName"]
        largeImage <- map["largeImage"]
        maximumPromoPrice <- map["maximumPromoPrice"]
        salePrice <- map["salePrice"]
        maximumListPrice <- map["maximumListPrice"]
        promoPrice <- map["promoPrice"]
        productId <- map["productId"]
        listPrice <- map["listPrice"]
        minimumPromoPrice <- map["minimumPromoPrice"]
    }
    
}
