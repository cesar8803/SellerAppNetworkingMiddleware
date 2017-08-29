//
//  ListaEventoResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 05/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MWListaEventoResponse: Mappable {
    
    public var tienda: String?
    public var listaDirecciones: [MWListaDirecciones]?
    public var fechaEvento: String?
    public var listaFestejados: [MWListaFestejados]?
    public var listaArticulos: [MWListaArticulos]?
    public var tipoMesa: Float?
    public var comentarios: String?
    public var numEvento: String?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        tienda <- map["tienda"]
        listaDirecciones <- map["listaDirecciones"]
        fechaEvento <- map["fechaEvento"]
        listaFestejados <- map["listaFestejados"]
        listaArticulos <- map["listaArticulos"]
        tipoMesa <- map["tipoMesa"]
        comentarios <- map["comentarios"]
        numEvento <- map["numEvento"]
    }
    
}
