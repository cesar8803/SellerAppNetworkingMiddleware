//
//  PLPResults.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class PLPResults: Mappable{
    var records: [Records]?
    var plpState: PLPState?
    var refinementGroups: [RefinementGroups]?
    var sortOptions: [SortOptions]?
    var label: String?
      
    required init?(map: Map){
    }
    func mapping(map: Map){
        records <- map["records"]
        plpState <- map["plpState"]
        refinementGroups <- map["refinementGroups"]
        sortOptions <- map["sortOptions"]
        label <- map["label"]
    }
}
