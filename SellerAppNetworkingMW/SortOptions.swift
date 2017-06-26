//
//  SortOptions.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class SortOptions: Mappable
{
    var sortBy: String?
    var label: String?
    
    required init?(map: Map)
    {
        
    }
    
    func mapping(map: Map)
    {
        sortBy <- map["sortBy"]
        label <- map["label"]
    }
}
