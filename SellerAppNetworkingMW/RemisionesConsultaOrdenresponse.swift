//
//  RemisionesConsultaOrdenresponse.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class RemisionesConsultaOrdenresponse: Mappable{
    var fechaEmision: String?
    var estadoOrden: String?
    var periodicidad: String?
    var observaciones: String?
    var descEstado: String?
    var tipoCompra: String?
    var nombreDestinatario: String?
    var direccionDestinatario: Direcciondestinatario?
    var listaArticulos: [MWListaArticulos]?
    var diasEntrega: String?
    var importeTotal: String?
    
    required init?(map: Map){
    }
    func mapping(map: Map){
        fechaEmision <- map["fechaEmision"]
        estadoOrden <- map["estadoOrden"]
        periodicidad <- map["periodicidad"]
        observaciones <- map["observaciones"]
        descEstado <- map["descEstado"]
        tipoCompra <- map["tipoCompra"]
        nombreDestinatario <- map["nombreDestinatario"]
        direccionDestinatario <- map["direccionDestinatario"]
        listaArticulos <- map["listaArticulos"]
        diasEntrega <- map["diasEntrega"]
        importeTotal <- map["importeTotal"]
    }
}
