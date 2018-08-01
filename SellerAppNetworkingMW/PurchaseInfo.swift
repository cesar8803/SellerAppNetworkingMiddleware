//
//  PurchaseInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class PurchaseInfo: Mappable {
	public var dateofPurchase : String?
	public var warehouseInfo : String?
	public var deliveryAddress : String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        dateofPurchase   <- map["dateofPurchase"]
        warehouseInfo   <- map["warehouseInfo"]
        deliveryAddress   <- map["deliveryAddress"]
    }
}
