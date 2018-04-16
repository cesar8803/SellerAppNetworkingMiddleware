//
//  Events.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 16/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Events: Mappable {

    public var eventId : String?
    public var siteId : String?
    public var eventName : String?
    public var eventDate : String?
    public var eventCreatedDate : String?
    public var eventCategory : String?
    public var eventType : String?
    public var eventStatus : String?
    public var isEmployeeEvent : String?
    public var onlineEcardNumber : String?
    public var createdPersonName : String?
    public var preferredStoreId : String?
    public var preferredStoreName : String?
    public var eventWebSiteURL : String?
    public var eventImageURL : String?
    public var owners : [EventOwners]?
 
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        eventId <- map["eventId"]
        siteId <- map["siteId"]
        eventName <- map["eventName"]
        eventDate <- map["eventDate"]
        eventCreatedDate <- map["eventCreatedDate"]
        eventCategory <- map["eventCategory"]
        eventType <- map["eventType"]
        eventStatus <- map["eventStatus"]
        isEmployeeEvent <- map["isEmployeeEvent"]
        onlineEcardNumber <- map["onlineEcardNumber"]
        createdPersonName <- map["createdPersonName"]
        preferredStoreId <- map["preferredStoreId"]
        eventWebSiteURL <- map["eventWebSiteURL"]
        eventImageURL <- map["eventImageURL"]
        owners <- map["owners"]
    }
}
