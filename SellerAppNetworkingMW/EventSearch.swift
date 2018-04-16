//
//  EventSearch.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 16/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class EventSearch: Mappable {
    
    public var errorCode : String?
    public var totalResultsMatchedCount : Int?
    public var currentPageNumber : Int?
    public var eventTypes : [String]?
    public var events : [Events]?
    public var status : Status?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        errorCode <- map["errorCode"]
        totalResultsMatchedCount <- map["totalResultsMatchedCount"]
        currentPageNumber <- map["currentPageNumber"]
        eventTypes <- map["eventTypes"]
        events <- map["events"]
        status <- map["status"]
    }
}
