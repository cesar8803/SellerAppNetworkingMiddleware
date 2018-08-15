//
//  StatusOffer.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 15/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//


import Foundation
import ObjectMapper

public class StatusOffer : Mappable {
    var statusCode : Int?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        statusCode <- map["statusCode"]
    }
    
    
    
}
