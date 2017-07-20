//
//  ConsultaSKUInventarioResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class ConsultaSkuInventarioResponse: Mappable {
    
    public var sap_inventario: SapInventario?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        sap_inventario <- map["Sap_inventario"]
    }
}
