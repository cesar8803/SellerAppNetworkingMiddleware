//
//  RefinementGroups.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class RefinementGroups: Mappable{
    public var dimensionName: String?
    public var refinement: [Refinement]?
    public var multiSelect: Int?
    public var name: String?
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        dimensionName <- map["dimensionName"]
        refinement <- map["refinement"]
        multiSelect <- map["multiSelect"]
        name <- map["name"]
    }
}
