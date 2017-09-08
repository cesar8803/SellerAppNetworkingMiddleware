//
//  PlpFlags.swift
//  SellerAppNetworkingMW
//
//  Created by Alex Fierros on 08/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class PlpFlags: Mappable{
    public var flagMessage: String?
    public var flagId: String?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        flagMessage <- map["flagMessage"]
        flagId <- map["flagId"]
    }
}
