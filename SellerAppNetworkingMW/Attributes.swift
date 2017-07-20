//
//  Attributes.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class Attributes: Mappable {
    
    public var marca: String?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        marca <- map["Marca"]
    }
    
}
