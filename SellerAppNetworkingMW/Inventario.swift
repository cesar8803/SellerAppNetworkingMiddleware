//
//  Inventario.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class Inventario: Mappable {
    
    public var bodegaCentral: Int?
    public var tienda: Int?
    public var otrasTiendas: Int?
    
    public required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        bodegaCentral <- map["BodegaCentral"]
        tienda <- map["Tienda"]
        otrasTiendas <- map["OtrasTiendas"]
    }
    
}
