//
//  Sku.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 8/1/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Sku: Mappable{
    public var SKU: String?
    public var smImage: String?
    public var url: String?
    public var maximumListPrice: String?
    public var nombre: String?
    public var minimumListPrice: String?
    public var lgImage: String?
    public var productType: String?
    public var department: String?
    
    public var benefits: Benefits?
    public var promotionLabel: String?

    required public init?(map: Map){
        
    }
    
    public func mapping(map: Map){
        SKU <- map["SKU"]
        smImage <- map["smImage"]
        url <- map["url"]
        
        if let value = map["maximumListPrice"].currentValue as? Double{
            maximumListPrice = String(value)
        }else{
            maximumListPrice <- map["maximumListPrice"]
        }
        
        nombre <- map["nombre"]        
        if let value2 = map["minimumListPrice"].currentValue as? Double{
            minimumListPrice = String(value2)
        }else{
            minimumListPrice <- map["minimumListPrice"]
        }
        
        lgImage <- map["lgImage"]
        productType <- map["productType"]
        department <- map["department"]
        
        if let value = map["benefits"].currentValue as? Benefits {
            benefits = value
        }else if let value = map["promotions"].currentValue as? Benefits {
            benefits = value
        }
        
        benefits <- map["benefits"]
        promotionLabel <- map["promotionLabel"]
        
    }
}
