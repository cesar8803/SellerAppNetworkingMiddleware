//
//  GuestInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class GuestInfo: Mappable {
    
	public var guestId : String?
	public var firstName : String?
	public var lastName : String?
	public var groupId : String?
	public var groupName : String?
	public var emailId : String?
	public var ageGroup : Int?
	public var attendanceStatus : Int?
	public var gender : String?
	public var name : String?
	public var dateofPurchase : String?
	public var popupStore : String?
	public var popupDelivery : String?
	public var popupOwner : String?
	public var companionInfo : [CompanionInfo]?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
		guestId <- map["guestId"]
		firstName <- map["firstName"]
		lastName <- map["lastName"]
		groupId <- map["groupId"]
		groupName <- map["groupName"]
		emailId <- map["emailId"]
		ageGroup <- map["ageGroup"]
		attendanceStatus <- map["attendanceStatus"]
		gender <- map["gender"]
		name <- map["name"]
		dateofPurchase <- map["dateofPurchase"]
		popupStore <- map["popupStore"]
		popupDelivery <- map["popupDelivery"]
		popupOwner <- map["popupOwner"]
		companionInfo <- map["companionInfo"]
	}

}
