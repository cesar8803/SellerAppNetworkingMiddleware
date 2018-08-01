//
//  CelebratedList.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class CelebratedList: Mappable {
	public var celebratedId : String?
	public var celebratedName : String?
	public var recipientIndex : String?
	public var addressId : String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
		celebratedId <- map["celebratedId"]
		celebratedName <- map["celebratedName"]
		recipientIndex <- map["recipientIndex"]
		addressId <- map["addressId"]
	}
}
