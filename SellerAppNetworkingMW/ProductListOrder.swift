//
//  ProductListOrder.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Productlistorder: Mappable{
    public var Remisiones_consulta_ordenResponse: RemisionesConsultaOrdenresponse?
    public var isSuccessful: Int?
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        Remisiones_consulta_ordenResponse <- map["Remisiones_consulta_ordenResponse"]
        isSuccessful <- map["isSuccessful"]
    }
}
