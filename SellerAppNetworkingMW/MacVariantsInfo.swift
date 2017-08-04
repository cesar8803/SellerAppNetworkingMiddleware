//
//  MacVariantsInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MacVariantsInfo: Mappable{
    public var sku: String?
    public var smImage: String?
    public var colorName: String?
    public var xlImage: String?
    public var salePrice: String?
    public var lgImage: String?
    public var listPrice: String?
    
    required public init?( map: Map){
    }
    public func mapping(map: Map){
        sku <- map["sku"]
        smImage <- map["smImage"]
        colorName <- map["colorName"]
        xlImage <- map["xlImage"]
        salePrice <- map["salePrice"]
        lgImage <- map["lgImage"]
        listPrice <- map["listPrice"]
    }
}
