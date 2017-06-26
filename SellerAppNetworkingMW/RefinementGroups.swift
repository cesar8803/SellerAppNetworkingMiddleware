//
//  RefinementGroups.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class RefinementGroups: Mappable{
    var dimensionName: String?
    var refinement: [Refinement]?
    var multiSelect: Int?
    var name: String?
    
    required init?(map: Map){
    }
    func mapping(map: Map){
        dimensionName <- map["dimensionName"]
        refinement <- map["refinement"]
        multiSelect <- map["multiSelect"]
        name <- map["name"]
    }
}
