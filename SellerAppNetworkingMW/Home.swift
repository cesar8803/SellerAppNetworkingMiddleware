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
    public var homePageContent: [HomePageContent]?
    public var isSuccessful: Bool?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        homePageContent <- map["homePageContent"]
        isSuccessful <- map["isSuccessful"]
    }
}

public class HomePageContent: Mappable{
    public var bannerContent: BannerContent?
    public var carouselContent: CarouselContent?
    public var type: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        bannerContent <- map["bannerContent"]
        carouselContent <- map["carouselContent"]
        type <- map["type"]
    }
}

public class BannerContent: Mappable{
    public var bannerType: String?
    public var bannerItems: [BannerItems]?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        bannerType <- map["bannerType"]
        bannerItems <- map["bannerItems"]
    }
}

public class CarouselContent: Mappable{
    public var maximumNumRecords: Float?
    public var minNumRecords: Float?
    public var moreLinkCategory: String?
    public var name: String?
    public var recommendedItems: [RecommendedItems]?
    
    required public init?(map: Map){
        
    }
    
    public func mapping(map: Map){
        maximumNumRecords <- map["maximumNumRecords"]
        minNumRecords <- map["minNumRecords"]
        moreLinkCategory <- map["moreLinkCategory"]
        name <- map["name"]
        recommendedItems <- map["recommendedItems"]
    }
}

public class BannerItems: Mappable{
    public var campaign: String?
    public var title: String?
    public var image: String?
    public var position: String?
    public var redirectsTo: String?
    public var type: String?
    public var view: String?
    
    required public init?(map: Map){
        
    }
    
    public func mapping(map: Map){
        campaign <- map["campaign"]
        title <- map["title"]
        image <- map["image"]
        position <- map["position"]
        redirectsTo <- map["redirectsTo"]
        type <- map["type"]
        view <- map["view"]
    }
}
