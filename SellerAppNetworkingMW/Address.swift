//
//  Address.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 30/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Address: Mappable {

    public var firstName : String?
    public var middleName : String?
    public var lastName : String?
    public var address1 : String?
    public var address2 : String?
    public var address3 : String?
    public var exteriorNumber : String?
    public var interiorNumber : String?
    public var building : String?
    public var postalCode : String?
    public var delegationMunicipality : String?
    public var cellular : String?
    public var businessPhoneNumber : String?
    public var city : String?
    public var state : String?
    public var stateId : String?
    public var delegationMunicipalityId : String?
    public var country : String?
    public var particularPhoneCode : String?
    public var phoneNumber : String?
    public var businessPhoneCode : String?
    public var otherColony : String?
    public var nickName : String?
    public var eventRecipientIndex : String?
    public var assignedToEvent : Bool?
    public var lastModifiedDate : Int?
    public var neighborhood : String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        firstName <- map["firstName"]
        middleName <- map["middleName"]
        lastName <- map["lastName"]
        address1 <- map["address1"]
        address2 <- map["address2"]
        address3 <- map["address3"]
        exteriorNumber <- map["exteriorNumber"]
        interiorNumber <- map["interiorNumber"]
        building <- map["building"]
        postalCode <- map["postalCode"]
        delegationMunicipality <- map["delegationMunicipality"]
        cellular <- map["cellular"]
        businessPhoneNumber <- map["businessPhoneNumber"]
        city <- map["city"]
        state <- map["state"]
        stateId <- map["stateId"]
        delegationMunicipalityId <- map["delegationMunicipalityId"]
        country <- map["country"]
        particularPhoneCode <- map["particularPhoneCode"]
        businessPhoneCode <- map["businessPhoneCode"]
        otherColony <- map["otherColony"]
        nickName <- map["nickName"]
        switch map["eventRecipientIndex"].currentValue {
        case (let v as String):
            eventRecipientIndex = v
        case (let v as Int):
            eventRecipientIndex = String(v)
        default:
            debugPrint("You should add another kind of data")
        }
        cellular <- map["cellular"]
        assignedToEvent <- map["assignedToEvent"]
        lastModifiedDate <- map["lastModifiedDate"]
        neighborhood <- map["neighborhood"]
    }
}
