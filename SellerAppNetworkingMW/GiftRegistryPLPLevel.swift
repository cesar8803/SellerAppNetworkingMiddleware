//
//  GiftRegistryPLPLevel.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 05/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class GiftRegistryPLPLevel: Mappable {
    
    public var WARNING: String?
    public var listaEventoResponse: MWListaEventoResponse?
    public var isSuccessful: Int?
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        WARNING <- map["WARNING"]
        listaEventoResponse <- map["listaEventoResponse"]
        isSuccessful <- map["isSuccessful"]
    }
    
}
