//
//  InventoryMKP.swift
//  SellerAppNetworkingMW
//
//  Created by Stephane Gardon on 20/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class InventoryMKP: Mappable{
    
    public var  skuId               : String?
    public var  bestSeller          : String?

    
    
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        skuId               <- map ["skuId"]
        bestSeller          <- map ["bestSeller"]

    }
}
