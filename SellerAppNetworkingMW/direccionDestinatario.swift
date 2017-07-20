//
//  direccionDestinatario.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Direcciondestinatario: Mappable{
    public var entre: String?
    public var colonia: String?
    public var estado: String?
    public var direccion: String?
    public var y: String?
    public var telefono: String?
    public var municipio: String?
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        entre <- map["entre"]
        colonia <- map["colonia"]
        estado <- map["estado"]
        direccion <- map["direccion"]
        y <- map["y"]
        telefono <- map["telefono"]
        municipio <- map["municipio"]
    }
}
