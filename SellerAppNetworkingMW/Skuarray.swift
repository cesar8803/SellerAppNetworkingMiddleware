//
//  Skuarray.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar on 17/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Skuarray: Mappable{
    public var SKU: String?
    public var url: String?
    public var nombre: String?
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        SKU <- map["SKU"]
        url <- map["url"]
        nombre <- map["nombre"]
    }
}
