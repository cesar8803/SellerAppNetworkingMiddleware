//
//  ListaFestejados.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 05/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MWListaFestejados: Mappable {
    
    public var nombreCompleto: String?
    public var tipo: Float?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        nombreCompleto <- map["nombreCompleto"]
        tipo <- map["tipo"]
    }
    
}
