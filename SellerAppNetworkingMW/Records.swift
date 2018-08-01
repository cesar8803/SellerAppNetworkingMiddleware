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
    public var productAvgRating: Float?
    public var skuRepositoryId: String?
    public var smImage: String?
    public var promotionLabel: String?
    public var productDisplayName: String?
    public var macVariantsInfo: [MacVariantsInfo]?
    public var plpFlags: [PlpFlags]?
    public var variantsColor: [VariantsColor]?
    public var maximumPromoPrice: Int?
    public var productRatingCount: Int?
    public var xlImage: String?
    public var minimumPromoPrice: Int?
    public var productType: String?
    public var maximumListPrice: String?
    public var promoPrice: Int?
    public var minimumListPrice: String?
    public var lgImage: String?
    public var listPrice: Int?
    public var productId: String?
    public var largeImage: String?
    public var salePrice: String?
    public var displayName: String?
    public var scanProduct: Bool?
    public var productBestSeller: String?
    public var isMarketPlace: Bool?
    
    public init(){
    }
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        groupType <- map["groupType"]
        productAvgRating <- map["productAvgRating"]
        skuRepositoryId <- map["skuRepositoryId"]
        smImage <- map["smImage"]
        promotionLabel <- map["promotionLabel"]
        productDisplayName <- map["productDisplayName"]
        productBestSeller <- map["productBestSeller"]
        isMarketPlace <- map["isMarketPlace"]
        
        macVariantsInfo <- map["macVariantsInfo"]
        plpFlags <- map["plpFlags"]
        variantsColor <- map["variantsColor"]
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
