//
//  RatingDetails.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class RatingDetails: Mappable {
    
    public var threeStarRatingCount: Float?
    public var oneStarRatingCount: Float?
    public var fourStarRatingCount: Float?
    public var twoStarRatingCount: Float?
    public var fiveStarRatingCount: Float?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        threeStarRatingCount <- map["threeStarRatingCount"]
        oneStarRatingCount <- map["oneStarRatingCount"]
        fourStarRatingCount <- map["fourStarRatingCount"]
        twoStarRatingCount <- map["twoStarRatingCount"]
        fiveStarRatingCount <- map["fiveStarRatingCount"]
    }
    
}
