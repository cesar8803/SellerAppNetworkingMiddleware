//
//  ListaDirecciones.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 05/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ListaDirecciones: Mappable {
    
    var poblacion: String?
    var telefono1: String?
    var numExt: String?
    var tipoFestejado: Float?
    var telefono2: String?
    var calle: String?
    var colonia: String?
    var edificio: String?
    var municipio: String?
    var pais: String?
    var estado: String?
    var codPos: String?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        poblacion <- map["poblacion"]
        telefono1 <- map["telefono1"]
        numExt <- map["numExt"]
        tipoFestejado <- map["tipoFestejado"]
        telefono2 <- map["telefono2"]
        calle <- map["calle"]
        colonia <- map["colonia"]
        edificio <- map["edificio"]
        municipio <- map["municipio"]
        pais <- map["pais"]
        estado <- map["estado"]
        codPos <- map["codPos"]
    }
}
