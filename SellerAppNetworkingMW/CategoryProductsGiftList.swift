//
//  CategoryProductsGiftList.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 16/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class CategoryProductsGiftList: Mappable {
    
    public var departmentId : String?
    public var departmentName : String?
    public var giftListItems : [GiftListItems]?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        departmentId <- map["departmentId"]
        departmentName <- map["departmentName"]
        giftListItems <- map["giftListItems"]
    }
}
