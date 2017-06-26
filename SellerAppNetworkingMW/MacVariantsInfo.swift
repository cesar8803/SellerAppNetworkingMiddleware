//
//  MacVariantsInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class MacVariantsInfo: Mappable{
    var sku: String?
    var smImage: String?
    var colorName: String?
    var xlImage: String?
    var salePrice: String?
    var lgImage: String?
    var listPrice: String?
    
    required init?( map: Map){
    }
    func mapping(map: Map){
        sku <- map["sku"]
        smImage <- map["smImage"]
        colorName <- map["colorName"]
        xlImage <- map["xlImage"]
        salePrice <- map["salePrice"]
        lgImage <- map["lgImage"]
        listPrice <- map["listPrice"]
    }
}
