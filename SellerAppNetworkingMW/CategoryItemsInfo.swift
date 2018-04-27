//
//  CategoryItemsInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class CategoryItemsInfo: Mappable {
    public var categoryName : String?
    public var itemInfo : [ItemInfo]?

    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        categoryName   <- map["categoryName"]
        itemInfo   <- map["itemInfo"]
    }
}
