//
//  ArrayPurchase.swift
//  SellerAppNetworkingMW
//
//  Created by David on 9/30/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class purchases_Base : Mappable {
    public var purchases : [Purchases]?

    public required init?(map: Map) { }
    
    public func mapping(map: Map) {
        purchases <- map["purchases"]
    }
}
