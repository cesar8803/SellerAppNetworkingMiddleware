//
//  MiddlewareResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Luis Guillermo Cuevas García on 14/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MiddlewaReresponse: Mappable{
    public var results: [Results]?
    public var isSuccessful: Int?
    public var totalNumResults: Float?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        results <- map["results"]
        isSuccessful <- map["isSuccessful"]
        totalNumResults <- map["totalNumResults"]
    }
}
