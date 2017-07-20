//
//  SapInventario.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class SapInventario: Mappable {
    
    public var sap_Sku_Inventario: [SapSkuInventario]?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        sap_Sku_Inventario <- map["Sap_sku_inventario"]
    }
}
