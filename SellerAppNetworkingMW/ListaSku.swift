//
//  ListaSku.swift
//  SellerAppNetworkingMW
//
//  Created by Luis Guillermo Cuevas García on 30/08/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ListaSku: Mappable{
    public var sku: String?
    public var smImage: String?
    public var idTipoSku: String?
    public var maximumListPrice: Float?
    public var nombre: String?
    public var minimumListPrice: Float?
    public var lgImage: String?
    public var nombreSKU: String?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        sku <- map["sku"]
        smImage <- map["smImage"]
        idTipoSku <- map["idTipoSku"]
        maximumListPrice <- map["maximumListPrice"]
        nombre <- map["nombre"]
        minimumListPrice <- map["minimumListPrice"]
        lgImage <- map["lgImage"]
        nombreSKU <- map["nombreSKU"]
    }
}
