//
//  PLPState.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class PLPState: Mappable{
    var firstRecNum: Int?
    var recsPerPage: Int?
    var originalSearchTerm: String?
    var totalNumRecs: Int?
    var currentSortOption: String?
    var lastRecNum: Int?
    var currentFilters: String?
    var categoryId: String?
    
    required init?(map: Map){
    }
    func mapping(map: Map){
        firstRecNum <- map["firstRecNum"]
        recsPerPage <- map["recsPerPage"]
        originalSearchTerm <- map["originalSearchTerm"]
        totalNumRecs <- map["totalNumRecs"]
        currentSortOption <- map["currentSortOption"]
        lastRecNum <- map["lastRecNum"]
        currentFilters <- map["currentFilters"]
        categoryId <- map["categoryId"]
    }
}
