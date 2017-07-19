//
//  direccionDestinatario.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class Direcciondestinatario: Mappable{
    var entre: String?
    var colonia: String?
    var estado: String?
    var direccion: String?
    var y: String?
    var telefono: String?
    var municipio: String?
    
    required init?(map: Map){
    }
    func mapping(map: Map){
        entre <- map["entre"]
        colonia <- map["colonia"]
        estado <- map["estado"]
        direccion <- map["direccion"]
        y <- map["y"]
        telefono <- map["telefono"]
        municipio <- map["municipio"]
    }
}
