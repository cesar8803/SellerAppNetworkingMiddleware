//
//  RemisionesConsultaOrdenresponse.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class RemisionesConsultaOrdenresponse: Mappable{
    public var fechaEmision: String?
    public var estadoOrden: String?
    public var periodicidad: String?
    public var observaciones: String?
    public var descEstado: String?
    public var tipoCompra: String?
    public var nombreDestinatario: String?
    public var direccionDestinatario: Direcciondestinatario?
    public var listaArticulos: [MWListaArticulos]?
    public var diasEntrega: String?
    public var importeTotal: String?
    
    required  public init?(map: Map){
    }
    public func mapping(map: Map){
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
