//
//  SellersOfferDetails.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 15/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class SellersOfferDetails : Mappable {
    public var sellerRating : Int?
    public var marketplaceSLMessage : String?
    public var sellerSkuId : String?
    public var marketplaceBTMessage : String?
    public var eddSLHome : String?
    public var promoPrice : Double?
    public var listPrice : Double?
    public var sellerId : String?
    public var eddSLCC : String?
    public var allowLPPromotions : Bool?
    public var salePrice : Double?
    public var sellerName : String?
    public var sellerOperatorId : String?
    public var offerId : String?
    public var eddBT : String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        sellerRating <- map["sellerRating"]
        marketplaceSLMessage <- map["marketplaceSLMessage"]
        sellerSkuId <- map["sellerSkuId"]
        marketplaceBTMessage <- map["marketplaceBTMessage"]
        eddSLHome <- map["eddSLHome"]
        promoPrice <- map["promoPrice"]
        listPrice <- map["listPrice"]
        sellerId <- map["sellerId"]
        eddSLCC <- map["eddSLCC"]
        allowLPPromotions <- map["allowLPPromotions"]
        salePrice <- map["salePrice"]
        sellerName <- map["sellerName"]
        sellerOperatorId <- map["sellerOperatorId"]
        offerId <- map["offerId"]
        eddBT <- map["eddBT"]
    }
    
}

