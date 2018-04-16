//
//  EventOwners.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 16/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class EventOwners: Mappable {
    
    public var ownerId : String?
    public var title : String?
    public var firstName : String?
    public var lastName : String?
    public var motherName : String?
    public var nickName : String?
    public var dateOfBirth : String?
    public var phone : String?
    public var sex : String?
    public var primaryOwner : String?
    public var email : String?
    public var is_adult : String?
    public var profileId : String?
    public var hasPermissionToAccess : String?
    public var eventPlasticCardNumbers : [String]?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        ownerId <- map["ownerId"]
        title <- map["title"]
        firstName <- map["firstName"]
        lastName <- map["lastName"]
        motherName <- map["motherName"]
        nickName <- map["nickName"]
        dateOfBirth <- map["dateOfBirth"]
        phone <- map["phone"]
        sex <- map["sex"]
        primaryOwner <- map["primaryOwner"]
        email <- map["email"]
        is_adult <- map["is_adult"]
        profileId <- map["profileId"]
        hasPermissionToAccess <- map["hasPermissionToAccess"]
        eventPlasticCardNumbers <- map["eventPlasticCardNumbers"]
    }
}
