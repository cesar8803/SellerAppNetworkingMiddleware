//
//  Liverpool.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 27/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Liverpool: Mappable{
    public var items: [Items]?
    public var option: Int?
    public var optionPrice: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        items <- map["items"]
        option <- map["option"]
        optionPrice <- map["optionPrice"]
    }
}
