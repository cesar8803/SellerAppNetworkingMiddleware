//
//  skuOffers.swift
//  SellerAppNetworkingMW
//
//  Created by Stephane Gardon on 13/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class SkuOffers: Mappable{
    
    public var  skuId               : String?
    public var  bestSeller          : String?
    public var  sellersCount        : Int?
    public var  leadtimeToShip      : String?
    public var  bestListPrice       : Float?
    public var  bestSalePrice       : Float?
    public var  bestPromoPrice      : Float?
    public var  offerId             : String?
    public var  sellerId            : String?
    public var  allowLPPromotions   : Bool?
    public var  sellerOperatorId    : String?
    public var  sellerSkuId         : String?
    public var  liverpoolPromotions : [String]?
    public var  otherPromotions     : [String]?
    
    
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        skuId               <- map ["skuId"]
        bestSeller          <- map ["bestSeller"]
        sellersCount        <- map ["sellersCount"]
        leadtimeToShip      <- map ["leadtimeToShip"]
        bestListPrice       <- map ["bestListPrice"]
        bestSalePrice       <- map ["bestSalePrice"]
        bestPromoPrice      <- map ["bestPromoPrice"]
        offerId             <- map ["offerId"]
        sellerId            <- map ["sellerId"]
        allowLPPromotions   <- map ["allowLPPromotions"]
        sellerOperatorId    <- map ["sellerOperatorId"]
        sellerSkuId         <- map ["sellerSkuId"]
        liverpoolPromotions <- map ["liverpoolPromotions"]
        otherPromotions     <- map ["otherPromotions"]
    }
}

/*

 "skuOffers":[
        {
            "skuId": "1033866964",
            "bestSeller": "ZensarStore2",
            "sellersCount": 3,
            "leadtimeToShip": "10",
            "bestListPrice": 1000,
            "bestSalePrice": 800,
            "bestPromoPrice": 700,
            "offerId": "2049",
            "sellerId": "2002",
            "allowLPPromotions": true,
            "sellerOperatorId": "ZX12223",
            "sellerSkuId": "SOFT_LINE_ITEM",
            "liverpoolPromotions": [
                "3 MESES SIN INTERESES",
                "6 MESES SIN INTERESES",
                "6 MESES SIN INTERESES",
                "PRESUPUESTO LIVERPOOL/FABRICAS"
            ],
            "otherPromotions": [
                 "3 MESES SIN INTERESES",
                 "6 MESES SIN INTERESES",
                 "6 MESES SIN INTERESES",
                 "CUENTA CORRIENTE EXTERNAS"
            ]
        }
 ]
 */