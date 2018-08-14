//
//  PLPResults.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class PLPResults: Mappable{
    public var records: [Records]?
    public var plpState: PLPState?
    public var refinementGroups: [RefinementGroups]?
    public var sortOptions: [SortOptions]?
    public var label: String?
    public var marketplaceSLMessage: String?
    public var marketplaceBTMessage: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        records <- map["records"]
        plpState <- map["plpState"]
        refinementGroups <- map["refinementGroups"]
        sortOptions <- map["sortOptions"]
        label <- map["label"]
        marketplaceSLMessage <- map["marketplaceSLMessage"]
        marketplaceSLMessage <- map["marketplaceBTMessage"]
    }
}
