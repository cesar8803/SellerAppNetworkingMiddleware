//
//  Items.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 27/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Items: Mappable{
    public var visible: Int?
    public var desc: String?
    public var Porcentaje: [Porcentaje]?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        visible <- map["visible"]
        desc <- map["desc"]
        Porcentaje <- map["Porcentaje"]
    }
}
