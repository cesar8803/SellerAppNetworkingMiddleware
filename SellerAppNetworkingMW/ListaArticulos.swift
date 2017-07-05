//
//  ListaArticulos.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 05/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ListaArticulos: Mappable {
    
    var SKU: String?
    var cantidad: Float?
    var clasificacion: String?
    var url: String?
    var maximumListPrice: Float?
    var nombre: String?
    var minimumListPrice: Float?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map){
        SKU <- map["SKU"]
        cantidad <- map["cantidad"]
        clasificacion <- map["clasificacion"]
        url <- map["url"]
        maximumListPrice <- map["maximumListPrice"]
        nombre <- map["nombre"]
        minimumListPrice <- map["minimumListPrice"]
    }
    
}
