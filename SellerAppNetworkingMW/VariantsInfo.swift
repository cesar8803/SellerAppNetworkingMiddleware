//
//  public variantsInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class VariantsInfo: Mappable {
    
    public var sku: String?
    public var sizeSequence: String?
    public var listPrice: Int?
    public var colorHex: String?
    public var salePrice: Int?
    public var images: Images?
    public var promoPrice: Int?
    public var color: String?
    public var texture: String?
    public var colorImage: String?
    public var material: String?
    public var size: String?
    public var dimension: String?
    public var minimumListPrice: String?
    public var maximumListPrice: String?
    public var promotionLabel: String?
    // PDP 3
    public var bestSeller           : String?   // OFFER MKP
    public var sellersCount         : Int?      // OFFER MKP
    public var eddSLCC              : String?   // NEW
    public var eddSLHome            : String?   // NEW
    public var eddBT                : String?   // NEW
    public var offerId              : String?   // OFFER MKP
    public var sellerId             : String?   // OFFER MKP
    public var allowLPPromotions    : Bool?     // OFFER MKP
    public var sellerOperatorId     : String?   // OFFER MKP
    public var sellerSkuId          : String?   // OFFER MKP
    public var liverpoolPromotions  : [String]? // OFFER MKP
    public var otherPromotions      : [String]? // OFFER MKP
    public var marketPlaceMessage   : String?   // NEW
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        sku <- map["sku"]
        sizeSequence <- map["sizeSequence"]
        listPrice <- map["listPrice"]
        colorHex <- map["colorHex"]
        colorImage <- map["colorImage"]
        salePrice <- map["salePrice"]
        images <- map["images"]
        promoPrice <- map["promoPrice"]
        color <- map["color"]
        texture <- map["texture"]
        material <- map["material"]
        size <- map["size"]
        dimension <- map["dimension"]
        minimumListPrice <- map["minimumListPrice"]
        maximumListPrice <- map["maximumListPrice"]
        promotionLabel <- map["promotionLabel"]
        
        bestSeller          <- map ["bestSeller"]
        sellersCount        <- map ["sellersCount"]
        eddSLCC             <- map ["eddSLCC"]
        eddSLHome           <- map ["eddSLHome"]
        eddBT               <- map ["eddBT"]
        offerId             <- map ["offerId"]
        sellerId            <- map ["sellerId"]
        allowLPPromotions   <- map ["allowLPPromotions"]
        sellerOperatorId    <- map ["sellerOperatorId"]
        sellerSkuId         <- map ["sellerSkuId"]
        liverpoolPromotions <- map ["liverpoolPromotions"]
        otherPromotions     <- map ["otherPromotions"]
        marketPlaceMessage  <- map ["marketPlaceMessage"]
    }
    
}

