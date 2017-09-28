//
//  ShoppingListResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Luis Guillermo Cuevas García on 30/08/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ShoppingListResponse: Mappable{
    public var WARNING: String?
    public var datosCliente: DatosCliente?
    public var isSuccessful: Int?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        WARNING <- map["WARNING"]
        datosCliente <- map["datosCliente"]
        isSuccessful <- map["isSuccessful"]
    }
}
