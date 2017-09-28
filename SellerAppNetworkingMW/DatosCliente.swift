//
//  DatosCliente.swift
//  SellerAppNetworkingMW
//
//  Created by Luis Guillermo Cuevas García on 30/08/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class DatosCliente: Mappable{
    public var listaSKU: [ListaSku]?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        listaSKU <- map["listaSKU"]
    }
}
