//
//  Items.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 27/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MWItems: Mappable{
    
    public var position: Int?
    public var visible: Bool?
    public var desc: String?
    public var MSI: String?
    public var Porcentaje: [Porcentaje]?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        position <- map["position"]
        visible <- map["visible"]
        desc <- map["desc"]
        MSI <- map["MSI"]
        Porcentaje <- map["Porcentaje"]
    }
}
