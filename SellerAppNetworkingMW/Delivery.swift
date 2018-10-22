//
//  ZonasBlancas.swift
//  SellerAppNetworkingMW
//
//  Created by David on 21/09/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Delivery : Mappable {
	public var deliveryMethod : String?
	public var deliveryAddressName : String?
	public var deliveryDetails : String?

	public required init?(map: Map) { }

	public func mapping(map: Map) {

		deliveryMethod <- map["deliveryMethod"]
		deliveryAddressName <- map["deliveryAddressName"]
		deliveryDetails <- map["deliveryDetails"]
	}

}
