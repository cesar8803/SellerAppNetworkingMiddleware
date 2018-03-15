//
//  public variantsInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class VariantsInfo: Mappable {
    
    public var sku: String?
    public var sizeSequence: String?
    public var listPrice: Int?
    public var colorHex: String?
    public var salePrice: Int?
    public var images: Images?
    public var promoPrice: Int?
    public var color: String?
    public var texture: String?
    public var colorImage: String?
    public var material: String?
    public var size: String?
    public var dimension: String?
    public var minimumListPrice: String?
    public var maximumListPrice: String?
    public var promotionLabel: String?
    

    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        sku <- map["sku"]
        sizeSequence <- map["sizeSequence"]
        listPrice <- map["listPrice"]
        colorHex <- map["colorHex"]
        colorImage <- map["colorImage"]
        salePrice <- map["salePrice"]
        images <- map["images"]
        promoPrice <- map["promoPrice"]
        color <- map["color"]
        texture <- map["texture"]
        material <- map["material"]
        size <- map["size"]
        dimension <- map["dimension"]
        minimumListPrice <- map["minimumListPrice"]
        maximumListPrice <- map["maximumListPrice"]
        promotionLabel <- map["promotionLabel"]
    }
    
}

