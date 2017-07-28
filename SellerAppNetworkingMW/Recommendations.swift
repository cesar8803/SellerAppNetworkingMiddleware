//
//  Recommendations.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Recommendations: Mappable {
    
    public var maximumNumRecords: Float?
    public var name: String?
    public var minNumRecords: Float?
    public var moreLinkCategory: String?
    public var moreLinkStaticTextField: String?
    public var recommendedItems: [Records]?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        maximumNumRecords <- map["maximumNumRecords"]
        name <- map["name"]
        minNumRecords <- map["minNumRecords"]
        moreLinkCategory <- map["moreLinkCategory"]
        moreLinkStaticTextField <- map["moreLinkStaticTextField"]
        recommendedItems <- map["recommendedItems"]
    }
}
