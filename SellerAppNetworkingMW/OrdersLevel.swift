//
//  OrdersLevel.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar on 17/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Orderslevel: Mappable{
    public var skuArray: [Skuarray]?
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        skuArray <- map["skuArray"]
    }
}
