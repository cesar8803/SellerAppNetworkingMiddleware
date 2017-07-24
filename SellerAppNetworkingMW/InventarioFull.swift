//
//  InventarioFull.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class InventarioFull: Mappable {
    
    public var consultaSku_InventarioResponse: ConsultaSkuInventarioResponse?
    public var isSuccessful: Int?
    public var warningITR: String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        consultaSku_InventarioResponse <- map["ConsultaSku_InventarioResponse"]
        isSuccessful <- map["isSuccessful"]
        warningITR <- map["warningITR"]
    }
    
}
