//
//  EventInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class EventInfo: Mappable {
	public var eventId : String?
	public var eventStatus : String?
	public var eventName : String?
	public var eventOwnerName : String?
	public var eventCoOwnerName : String?
	public var eventDate : String?
	public var eventCountdown : String?
	public var eventProfileImage : String?
	public var imageURL : String?
	public var eventType : String?
	public var eventCelebrityName : String?
	public var ecardNo : String?
	public var isEmployeeEvent : Bool?
	public var registradosCount : String?
	public var eventCountdownMsg : String?
	public var recibidosCount : String?
	public var comprasCount : String?
	public var recibidosNewItemCount : String?
	public var suggestionLink : String?
	public var eventCategory : String?
	public var ownerId : String?

    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        
        eventId  <- map["eventId"]
        eventStatus  <- map["eventStatus"]
        eventName  <- map["eventName"]
        eventOwnerName  <- map["eventOwnerName"]
        eventCoOwnerName  <- map["eventCoOwnerName"]
        eventDate  <- map["eventDate"]
        eventCountdown  <- map["eventCountdown"]
        eventProfileImage  <- map["eventProfileImage"]
        imageURL  <- map["imageURL"]
        eventType  <- map["eventType"]
        eventCelebrityName  <- map["eventCelebrityName"]
        ecardNo  <- map["ecardNo"]
        isEmployeeEvent  <- map["isEmployeeEvent"]
        registradosCount  <- map["registradosCount"]
        eventCountdownMsg  <- map["eventCountdownMsg"]
        recibidosCount  <- map["recibidosCount"]
        comprasCount  <- map["comprasCount"]
        recibidosNewItemCount  <- map["recibidosNewItemCount"]
        suggestionLink  <- map["suggestionLink"]
        eventCategory  <- map["eventCategory"]
        ownerId  <- map["ownerId"]

    }
}
