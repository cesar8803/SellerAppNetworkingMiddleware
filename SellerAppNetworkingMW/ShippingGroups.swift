//
//  ZonasBlancas.swift
//  SellerAppNetworkingMW
//
//  Created by David on 21/09/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ShippingGroups : Mappable {
	public var shippingGroupId : String?
	public var orderStatusHexColor : String?
	public var estadoOrden : String?
	public var edd : Edd?
	public var products : [Products]?

	public required init?(map: Map) { }

	public func mapping(map: Map) {

		shippingGroupId <- map["shippingGroupId"]
		orderStatusHexColor <- map["orderStatusHexColor"]
		estadoOrden <- map["estadoOrden"]
		edd <- map["edd"]
		products <- map["products"]
	}

}
