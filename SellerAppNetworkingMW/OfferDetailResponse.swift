//
//  OfferDetailResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 15/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class OfferDetailResponse : Mappable {
    public var errorMessage : String?
    public var marketplaceSLMessage : String?
    public var estimatedDeliveryDaysCnC : String?
    public var marketplaceBTMessage : String?
    public var s : String?
    public var estimatedDeliveryBTMessage : String?
    public var status : StatusOffer?
    public var sellersOfferDetails : [SkuOffers]?
    public var estimatedDeliveryDaysHome : String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        errorMessage <- map["errorMessage"]
        marketplaceSLMessage <- map["marketplaceSLMessage"]
        estimatedDeliveryDaysCnC <- map["estimatedDeliveryDaysCnC"]
        marketplaceBTMessage <- map["marketplaceBTMessage"]
        s <- map["s"]
        estimatedDeliveryBTMessage <- map["estimatedDeliveryBTMessage"]
        status <- map["status"]
        sellersOfferDetails <- map["sellersOfferDetails"]
        estimatedDeliveryDaysHome <- map["estimatedDeliveryDaysHome"]
    }
    
}

