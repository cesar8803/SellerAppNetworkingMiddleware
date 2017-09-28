//
//  ListaArticulos.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 05/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MWListaArticulos: Mappable {
    
    public var SKU: String?
    public var cantidad: Float?
    public var clasificacion: String?
    public var categoryId: String?
    public var url: String?
    public var maximumListPrice: Float?
    public var nombre: String?
    public var minimumListPrice: Float?
    public var initialOrder: Int?
    public var smImage: String?
    public var fecEntrega: String?
    public var fecConfirmado: String?
    public var fecCaminoModulo: String?
    public var fecPreparando: String?
    public var fecEntregado: String?
    public var descEstado: String?
    public var descripcion: String?
    public var estado: String?
    public var lgImage: String?
    public var importe: String?
    public var productType: String?
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map){
        SKU <- map["SKU"]
        cantidad <- map["cantidad"]
        clasificacion <- map["clasificacion"]
        categoryId <- map["categoryId"]
        url <- map["url"]
        maximumListPrice <- map["maximumListPrice"]
        nombre <- map["nombre"]
        minimumListPrice <- map["minimumListPrice"]
        initialOrder <- map["initialOrder"]
        smImage <- map["smImage"]
        fecEntrega <- map["fecEntrega"]
        descEstado <- map["descEstado"]
        descripcion <- map["descripcion"]
        estado <- map["estado"]
        lgImage <- map["lgImage"]
        importe <- map["importe"]
        fecConfirmado <- map["fecConfirmado"]
        fecCaminoModulo <- map["fecCaminoModulo"]
        fecPreparando <- map["fecPreparando"]
        fecEntregado <- map["fecEntregado"]
        productType <- map["productType"]
    }
    
}
