//
//  Promotions.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class Promotions: Mappable {
    
    public var lpPromotions: [String]?
    public var otherPromotions: [String]?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        lpPromotions <- map["lpPromotions"]
        otherPromotions <- map["otherPromotions"]
    }
    
}
