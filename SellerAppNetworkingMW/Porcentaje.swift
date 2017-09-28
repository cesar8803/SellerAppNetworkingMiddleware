//
//  Porcentaje.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 27/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Porcentaje: Mappable{
    public var position: String?
    public var value: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        position <- map["position"]
        value <- map["value"]
    }
}
