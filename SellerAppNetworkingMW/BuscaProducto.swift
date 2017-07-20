//
//  BuscaProducto.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class BuscaProducto: Mappable {
    
    public var buscaBarcode: String?
    public var buscaDepartment: String?
    public var buscaPrice: String?
    public var buscaDescription: String?
    public var buscaFree: Int?
    public var buscaPromocion: Int?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        buscaBarcode <- map["buscaBarcode"]
        buscaDepartment <- map["buscaDepartment"]
        buscaPrice <- map["buscaPrice"]
        buscaDescription <- map["buscaDescription"]
        buscaFree <- map["buscaFree"]
        buscaPromocion <- map["buscaPromocion"]
    }
    
}
