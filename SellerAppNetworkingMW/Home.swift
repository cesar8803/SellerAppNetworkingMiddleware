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
    public var carousalBanners: [CarousalBanners]?
    public var stackBanners: [StackBanners]?
    public var newProducts: [NewProducts]?
    public var isSuccessful: Bool?
    public var bestsellerProducts: [BestSellerProducts]?
    
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
