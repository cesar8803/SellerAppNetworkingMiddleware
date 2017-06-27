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
    var groupType: String?
    var productAvgRating: Int?
    var skuRepositoryId: String?
    var smImage: String?
    var productDisplayName: String?
    var macVariantsInfo: [MacVariantsInfo]?
    var maximumPromoPrice: Int?
    var productRatingCount: Int?
    var xlImage: String?
    var minimumPromoPrice: Int?
    var productType: String?
    var maximumListPrice: Int?
    var promoPrice: Int?
    var minimumListPrice: Int?
    var lgImage: String?
    var listPrice: Int?
    var productId: String?
    
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
    }
}
