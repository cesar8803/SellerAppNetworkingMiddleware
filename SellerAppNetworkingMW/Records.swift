//
//  Records.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Records: Mappable{
    public var groupType: String?
    public var productAvgRating: Int?
    public var skuRepositoryId: String?
    public var smImage: String?
    public var productDisplayName: String?
    public var macVariantsInfo: [MacVariantsInfo]?
    public var maximumPromoPrice: Int?
    public var productRatingCount: Int?
    public var xlImage: String?
    public var minimumPromoPrice: Int?
    public var productType: String?
    public var maximumListPrice: Int?
    public var promoPrice: Int?
    public var minimumListPrice: Int?
    public var lgImage: String?
    public var listPrice: Int?
    public var productId: String?
    public var largeImage: String?
    public var salePrice: String?
    public var displayName: String?
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        groupType <- map["groupType"]
        productAvgRating <- map["productAvgRating"]
        skuRepositoryId <- map["skuRepositoryId"]
        smImage <- map["smImage"]
        productDisplayName <- map["productDisplayName"]
        macVariantsInfo <- map["macVariantsInfo"]
        maximumPromoPrice <- map["maximumPromoPrice"]
        productRatingCount <- map["productRatingCount"]
        xlImage <- map["xlImage"]
        minimumPromoPrice <- map["minimumPromoPrice"]
        productType <- map["productType"]
        maximumListPrice <- map["maximumListPrice"]
        promoPrice <- map["promoPrice"]
        minimumListPrice <- map["minimumListPrice"]
        lgImage <- map["lgImage"]
        listPrice <- map["listPrice"]
        productId <- map["productId"]
        largeImage <- map["largeImage"]
        salePrice <- map ["salePrice"]
        displayName <- map["displayName"]
    }
}
