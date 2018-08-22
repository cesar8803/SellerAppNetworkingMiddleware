//
//  InventoryMKP.swift
//  SellerAppNetworkingMW
//
//  Created by Stephane Gardon on 20/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public enum stockStatusEnum : String{
    case inStock = "IN_STOCK"
    case outStock = "OUT_OF_STOCK"
    case error = "error"
}

public class InventoryMKP: Mappable{
    public var  inventoryMKP    : [InventoryItemMKP]?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        inventoryMKP             <- map ["skuList"]
    }
}

public class InventoryItemMKP: Mappable{
    
    public var  skuId           : String?
    public var  quantity        : Int?
    public var  offerId         : String?
    public var  stockStatus     : stockStatusEnum?
    public var  s               : Bool?
    public var  err             : String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        skuId               <- map ["skuId"]
        quantity            <- map ["quantity"]
        offerId             <- map ["offerId"]
        
        switch map["stockStatus"].currentValue {
        case (let v as String)  : stockStatus = stockStatusEnum(rawValue:v)
        default                 : stockStatus = stockStatusEnum.error }
        
        s                   <- map ["s"]
        err                 <- map ["err"]
    }
    
}

//{
//    "skuList": [
//    {
//    "skuId": "1033866981",
//    "quantity": 500,
//    "offerId": "2040",
//    "stockStatus": "IN_STOCK",
//    "s": 0
//    },
//    {
//    "skuId": "1033866981",
//    "quantity": 0,
//    "offerId": "2007",
//    "stockStatus": "OUT_OF_STOCK",
//    "s": 0
//    },
//    {
//    "skuId": "1033245790",
//    "quantity": 0,
//    "offerId": "",
//    "stockStatus": "OUT_OF_STOCK",
//    "s": 0
//    },
//    {
//    "skuId": "",
//    "offerId": "",
//    "quantity": 0,
//    "s": 1,
//    "err": "Mandatory information is missing"
//    }
//    ]
//}

