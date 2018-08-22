//
//  ContactInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 22/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ContactInfo : Mappable {
	public var city : String?

    public required init?(map: Map) {

	}

    public func mapping(map: Map) {
		city <- map["city"]
	}

}
