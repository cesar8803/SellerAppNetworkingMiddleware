//
//  SellerDetailsResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 22/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//


import Foundation
import ObjectMapper

public class SellerDetailsResponse : Mappable {
    public var errorMessage : String?
    public var fourStarRatings : Int?
    public var oneStarRatings : Int?
    public var status : StatusSellerDetail?
    public var freeShipping : Bool?
    public var warehouseInfo : WarehouseInfo?
    public var recommendation : Recommendation?
    public var evaluationsCount : String?
    public var sellerName : String?
    public var sellerDesc : String?
    public var threeStarRatings : Int?
    public var s : String?
    public var contactInfo : ContactInfo?
    public var sellerImageURL : String?
    public var emptyEvaluationMsg : String?
    public var grade : String?
    public var fiveStarRatings : Int?
    public var twoStarRatings : Int?
    public var nextOffsetAvailable : String?
    public var createdDate : String?
    public var evaltionsInfoBeanList : [EvaltionsInfoBeanList]?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        errorMessage <- map["errorMessage"]
        fourStarRatings <- map["fourStarRatings"]
        oneStarRatings <- map["oneStarRatings"]
        status <- map["status"]
        freeShipping <- map["freeShipping"]
        warehouseInfo <- map["warehouseInfo"]
        recommendation <- map["recommendation"]
        evaluationsCount <- map["evaluationsCount"]
        sellerName <- map["sellerName"]
        sellerDesc <- map["sellerDesc"]
        threeStarRatings <- map["threeStarRatings"]
        s <- map["s"]
        contactInfo <- map["contactInfo"]
        sellerImageURL <- map["sellerImageURL"]
        emptyEvaluationMsg <- map["emptyEvaluationMsg"]
        grade <- map["grade"]
        fiveStarRatings <- map["fiveStarRatings"]
        twoStarRatings <- map["twoStarRatings"]
        nextOffsetAvailable <- map["nextOffsetAvailable"]
        createdDate <- map["createdDate"]
        evaltionsInfoBeanList <- map["evaltionsInfoBeanList"]
    }
    
}

