//
//  SortOptions.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class SortOptions: Mappable
{
    public var sortBy: String?
    public var label: String?
    
    required public init?(map: Map)
    {
        
    }
    
    public func mapping(map: Map)
    {
        sortBy <- map["sortBy"]
        label <- map["label"]
    }
}
