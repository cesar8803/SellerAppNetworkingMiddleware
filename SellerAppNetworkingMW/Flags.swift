//
//  Flags.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class Flags: Mappable {
    
    public var name: String?
    public var value: Int?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        
        name <- map["name"]
        value <- map["value"]
        
    }
    
}
