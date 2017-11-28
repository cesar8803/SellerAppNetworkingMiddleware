//
//  Flush.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 28/11/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class FlushLevel: Mappable{
    public var tipo: String?
    public var isSuccessful: Bool?
    public var operacion: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        tipo <- map["Tipo"]
        isSuccessful <- map["isSuccessful"]
        operacion <- map["Operacion"]
    }
}

