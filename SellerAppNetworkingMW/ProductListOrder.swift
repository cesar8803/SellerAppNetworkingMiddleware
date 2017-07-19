//
//  ProductListOrder.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class Productlistorder: Mappable{
    var Remisiones_consulta_ordenResponse: RemisionesConsultaOrdenresponse?
    var isSuccessful: Int?
    
    required init?(map: Map){
    }
    func mapping(map: Map){
        Remisiones_consulta_ordenResponse <- map["Remisiones_consulta_ordenResponse"]
        isSuccessful <- map["isSuccessful"]
    }
}
