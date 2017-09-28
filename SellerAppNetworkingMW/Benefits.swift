//
//  Benefits.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 27/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Benefits: Mappable{
    public var Externas: [Externas]?
    public var Liverpool: [Liverpool]?
    public var Generales: [Generales]?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        Externas <- map["Externas"]
        Liverpool <- map["Liverpool"]
        Generales <- map["Generales"]
    }
}
