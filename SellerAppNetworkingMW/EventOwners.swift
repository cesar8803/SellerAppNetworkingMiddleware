//
//  EventOwners.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 16/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class EventOwners: MWResponse {
    
    public var primaryOwner : Bool?
    public var firstName : String?
    public var lastName : String?
    public var profileId : String?
    public var ownerId : String?
    public var address : [Address]?
    
    public required init?(map: Map){
        super.init(map: map)
    }
    
    override public func mapping(map: Map){
        super.mapping(map:map)
        primaryOwner <- map["primaryOwner"]
        firstName <- map["firstName"]
        lastName <- map["lastName"]
        profileId <- map["profileId"]
        ownerId <- map["ownerId"]
        address <- map["address"]
    }
}
