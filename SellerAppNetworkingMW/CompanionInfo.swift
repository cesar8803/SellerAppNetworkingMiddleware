//
//  CompanionInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class CompanionInfo: Mappable {
	public var companionId : String?
	public var firstName : String?
	public var lastName : String?
	public var emailId : String?
	public var groupId : String?
	public var groupName : String?
	public var gender : String?
	public var ageGroup : Int?
	public var attendanceStatus : Int?
	public var invitationSent : String?
	public var tableAssigned : String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        
		companionId <- map["companionId"]
		firstName <- map["firstName"]
		lastName <- map["lastName"]
		emailId <- map["emailId"]
		groupId <- map["groupId"]
		groupName <- map["groupName"]
		gender <- map["gender"]
		ageGroup <- map["ageGroup"]
		attendanceStatus <- map["attendanceStatus"]
		invitationSent <- map["invitationSent"]
		tableAssigned <- map["tableAssigned"]
	}


}
