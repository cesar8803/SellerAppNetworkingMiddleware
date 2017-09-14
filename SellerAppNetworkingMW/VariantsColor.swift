//
//  VariantsColor.swift
//  SellerAppNetworkingMW
//
//  Created by Alex Fierros on 14/09/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class VariantsColor: Mappable{
    public var colorHex: String?
    public var colorImageURL: String?
    public var colorName: String?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        colorHex <- map["colorHex"]
        colorImageURL <- map["colorImageURL"]
        colorName <- map["colorName"]
    }
}
