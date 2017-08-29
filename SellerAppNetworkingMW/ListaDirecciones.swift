//
//  ListaDirecciones.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 05/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MWListaDirecciones: Mappable {
    
    public var poblacion: String?
    public var telefono1: String?
    public var numExt: String?
    public var tipoFestejado: Float?
    public var telefono2: String?
    public var calle: String?
    public var colonia: String?
    public var edificio: String?
    public var municipio: String?
    public var pais: String?
    public var estado: String?
    public var codPos: String?
    
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
