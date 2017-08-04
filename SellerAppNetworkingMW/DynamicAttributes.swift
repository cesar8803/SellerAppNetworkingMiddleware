//
//  Dynamicattributes.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 28/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class DynamicAttributes: Mappable {
    
    public var index: Float?
    public var name: String?
    public var value: String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        index <- map["index"]
        name <- map["name"]
        value <- map["value"]
    }
    
}
