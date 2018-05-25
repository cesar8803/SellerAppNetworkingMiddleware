//
//  AddressInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class AddressInfo: Mappable {
	public var firstName : String?
	public var addressId : String?
	public var lastName : String?
	public var address1 : String?
	public var address2 : String?
	public var city : String?
	public var state : String?
	public var country : String?
	public var postalCode : String?
	public var phoneNumber : String?

    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
		firstName   <- map["firstName"]
		addressId   <- map["addressId"]
		lastName   <- map["lastName"]
		address1   <- map["address1"]
		address2   <- map["address2"]
		city   <- map["city"]
		state   <- map["state"]
		country   <- map["country"]
		postalCode   <- map["postalCode"]
		phoneNumber   <- map["phoneNumber"]
	}

}
