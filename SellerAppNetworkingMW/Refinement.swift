//
//  Refinement.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//


import Foundation
import ObjectMapper

public class Refinement: Mappable{
    public var refinementId: String?
    public var count: Int?
    public var selected: Int?
    public var label: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        refinementId <- map["refinementId"]
        count <- map["count"]
        selected <- map["selected"]
        label <- map["label"]
    }
}
