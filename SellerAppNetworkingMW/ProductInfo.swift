//
//  ProductInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ProductInfo: Mappable {
    
    public var ratingCount: Float?
    public var images: Images?
    public var promoPrice: Float?
    public var minimumListPrice: Int?
    public var firstLevelParent: String?
    public var ratingDetails: RatingDetails?
    public var maximumPromoPrice: Int?
    public var shortDescription: String?
    public var minimumPromoPrice: Int?
    public var maximumListPrice: Int?
    public var type: String?
    public var productId: String?
    public var itrElegibility: Int?
    public var longDescription: String?
    public var avgRating: Float?
    public var defaultSkuId: String?
    public var eddInfo: EddInfo?
    public var promotions: Promotions?
    public var displayName: String?
    public var flags: [Flags]?
    public var gwp: Gwp?
    public var salePrice: Int?
    public var listPrice: Int?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        ratingCount <- map["ratingCount"]
        images <- map["images"]
        promoPrice <- map["promoPrice"]
        minimumListPrice <- map["minimumListPrice"]
        firstLevelParent <- map["firstLevelParent"]
        ratingDetails <- map["ratingDetails"]
        maximumPromoPrice <- map["maximumPromoPrice"]
        shortDescription <- map["shortDescription"]
        minimumPromoPrice <- map["minimumPromoPrice"]
        maximumListPrice <- map["maximumListPrice"]
        type <- map["type"]
        productId <- map["productId"]
        itrElegibility <- map["itrElegibility"]
        longDescription <- map["longDescription"]
        avgRating <- map["avgRating"]
        defaultSkuId <- map["defaultSkuId"]
        eddInfo <- map["eddInfo"]
        promotions <- map["promotions"]
        displayName <- map["displayName"]
        flags <- map["flags"]
        gwp <- map["gwp"]
        salePrice <- map["salePrice"]
        listPrice <- map["listPrice"]
    }
    
}
