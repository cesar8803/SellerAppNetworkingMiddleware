//
//  WarehouseInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 22/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class WarehouseInfo : Mappable {
	public var warehouseName : String?
	public var phone : String?
	public var countryISOCode : String?
	public var zipcode : String?
	public var state : String?
	public var address1 : String?
	public var address2 : String?
	public var wareHouseId : String?
	public var country : String?
	public var city : String?

	public required init?(map: Map) {

	}

	public func mapping(map: Map) {

		warehouseName <- map["warehouseName"]
		phone <- map["phone"]
		countryISOCode <- map["countryISOCode"]
		zipcode <- map["zipcode"]
		state <- map["state"]
		address1 <- map["address1"]
		address2 <- map["address2"]
		wareHouseId <- map["wareHouseId"]
		country <- map["country"]
		city <- map["city"]
	}

}
