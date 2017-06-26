//
//  Home.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Home: Mappable{
    var carousalBanners: [CarousalBanners]?
    var stackBanners: [StackBanners]?
    var newProducts: [NewProducts]?
    var isSuccessful: Int?
    var bestsellerProducts: [BestSellerProducts]?
    
    required public init?(map: Map){
    }
    public func mapping(map: Map){
        carousalBanners <- map["carousalBanners"]
        stackBanners <- map["stackBanners"]
        newProducts <- map["newProducts"]
        isSuccessful <- map["isSuccessful"]
        bestsellerProducts <- map["bestsellerProducts"]
    }
}
