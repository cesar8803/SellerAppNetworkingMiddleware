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
    public var s : String?
    public var estimatedDeliveryBTMessage : String?
    public var status : StatusOffer?
    public var sellersOfferDetails : [SellersOfferDetails]?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        errorMessage <- map["errorMessage"]
        s <- map["s"]
        estimatedDeliveryBTMessage <- map["estimatedDeliveryBTMessage"]
        status <- map["status"]
        sellersOfferDetails <- map["sellersOfferDetails"]
        
    }
    
}

