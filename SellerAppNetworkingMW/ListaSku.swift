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
    public var maximumListPrice: Double?
    public var nombre: String?
    public var minimumListPrice: Double?
    public var lgImage: String?
    public var nombreSKU: String?
    public var productType: String?
    public var department: String?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        sku <- map["sku"]
        smImage <- map["smImage"]
        idTipoSku <- map["idTipoSku"]
        if let value = map["maximumListPrice"].currentValue as? String{
            maximumListPrice = Double(value)
        }else{
            maximumListPrice <- map["maximumListPrice"]
        }
        //maximumListPrice <- map["maximumListPrice"]
        nombre <- map["nombre"]
        if let value = map["minimumListPrice"].currentValue as? String{
            minimumListPrice = Double(value)
        }else{
            minimumListPrice <- map["minimumListPrice"]
        }
        //minimumListPrice <- map["minimumListPrice"]
        lgImage <- map["lgImage"]
        nombreSKU <- map["nombreSKU"]
        productType <- map["productType"]
        department <- map["department"]
    }
}
