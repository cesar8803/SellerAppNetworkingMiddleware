//
//  ZonasBlancas.swift
//  SellerAppNetworkingMW
//
//  Created by David on 21/09/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Purchases : Mappable {
	public var packageApplied : Bool?
	public var purchaseDate : String?
	public var orderId : String?
	public var delivery : Delivery?
	public var payment : Payment?
	public var shippingGroups : [ShippingGroups]?

	public  required init?(map: Map) { }

	public func mapping(map: Map) {

		packageApplied <- map["isSinglePackage"]
		purchaseDate <- map["purchaseDate"]
		orderId <- map["orderId"]
		delivery <- map["delivery"]
		payment <- map["payment"]
		shippingGroups <- map["shippingGroups"]
	}

}
