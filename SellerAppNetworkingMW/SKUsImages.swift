//
//  SKUsImages.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 8/1/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class SKUsImages: Mappable{
    public var skus: [Sku]?
    
    required public init?( map: Map){
    }
    
    public func mapping(map: Map){
        skus <- map["skus"]
    }
}
