//
//  MarketPlaceOffers.swift
//  SellerAppNetworkingMW
//
//  Created by Stephane Gardon on 13/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MarketPlaceOffers: Mappable{
    
    public var success: String?
    public var skuOffers : [SkuOffers?]?
    public var listPriceMin: String?
    public var listPriceMax: String?
    public var finalPriceMin: String?
    public var finalPriceMax: String?
    public var priceRangeFlag: Bool?
    public var estimatedDeliveryDaysHome: String?
    public var estimatedDeliveryDaysCnC: String?
    public var estimatedDeliveryBTMessage: String?
    public var marketplaceBTMessage: String?
    public var marketplaceSLMessage: String?
    public var links: [String?] // GET ALL OFFERS PDP
    public var status: String? // ???? used or not
    
    

    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        success                     <- ["s"]
        skuOffers                   <- ["skuOffers"]
        listPriceMin                <- ["listPriceMin"]
        listPriceMax                <- ["listPriceMax"]
        finalPriceMin               <- ["finalPriceMin"]
        finalPriceMax               <- ["finalPriceMax"]
        priceRangeFlag              <- ["priceRangeFlag"]
        estimatedDeliveryDaysHome   <- ["estimatedDeliveryDaysHome"]
        estimatedDeliveryDaysCnC    <- ["estimatedDeliveryDaysCnC"]
        estimatedDeliveryBTMessage  <- ["estimatedDeliveryBTMessage"]
        marketplaceBTMessage        <- ["marketplaceBTMessage"]
        marketplaceSLMessage        <- ["marketplaceSLMessage"]
        links                       <- ["links"]
        status                      <- ["status"]
    }
}

/*
 "s": "0",
 "skuOffers":
    [
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
    ],
 "listPriceMin": "$299.00",
 "listPriceMax": "$399.00",
 "finalPriceMin": "$299.00",
 "finalPriceMax": "$349.00",
 "priceRangeFlag": "false",
 "estimatedDeliveryDaysHome": "5",
 "estimatedDeliveryDaysCnC": "7",
 "estimatedDeliveryBTMessage": "Pronto tendremos la fetcha entrega de este producto",
 "marketplaceBTMessage": "Vendido por { 0 } y enviado por",
 "marketplaceSLMessage": "Vendido y enviado por { 0 }",
 "links": ["http:\\google.com"]
 */
