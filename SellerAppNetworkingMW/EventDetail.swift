//
//  EventDetail.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 16/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class EventDetail: Mappable {
    
    public var status : Status?
    public var errorCode : String?
    public var eventId : String?
    public var siteId : String?
    public var eventName : String?
    public var eventDate : String?
    public var eventCreatedDate : String?
    public var eventCategory : String?
    public var eventType : String?
    public var eventStatus : String?
    public var preferredStoreId : String?
    public var preferredStoreName : String?
    public var eventWebSiteURL : String?
    public var eventImageURL : String?
    public var lastModifiedDate : String?
    public var eventOwners : [EventOwners]?
    public var categoryProductsGiftList : [CategoryProductsGiftList]?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        status <- map["status"]
        errorCode <- map["errorCode"]
        eventId <- map["eventId"]
        siteId <- map["siteId"]
        eventName <- map["eventName"]
        eventDate <- map["eventDate"]
        eventCreatedDate <- map["eventCreatedDate"]
        eventCategory <- map["eventCategory"]
        eventType <- map["eventType"]
        eventStatus <- map["eventStatus"]
        preferredStoreId <- map["preferredStoreId"]
        preferredStoreName <- map["preferredStoreName"]
        eventWebSiteURL <- map["eventWebSiteURL"]
        eventImageURL <- map["eventImageURL"]
        lastModifiedDate <- map["lastModifiedDate"]
        eventOwners <- map["eventOwners"]
        categoryProductsGiftList <- map["categoryProductsGiftList"]
    }
    
}
