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
    var errorMessage : String?
    var marketplaceSLMessage : String?
    var estimatedDeliveryDaysCnC : String?
    var marketplaceBTMessage : String?
    var s : String?
    var estimatedDeliveryBTMessage : String?
    var status : StatusOffer?
    var sellersOfferDetails : [SellersOfferDetails]?
    var estimatedDeliveryDaysHome : String?
    
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

