//
//  PLPState.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class PLPState: Mappable{
    public var firstRecNum: Int?
    public var recsPerPage: Int?
    public var originalSearchTerm: String?
    public var totalNumRecs: Int?
    public var currentSortOption: String?
    public var lastRecNum: Int?
    public var currentFilters: String?
    public var categoryId: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
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
