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
    public var trackingNumber: String?
	public var orderStatusHexColor : String?
	public var orderStatus : String?
	public var edd : Edd?
	public var products : [Products]?
    public var packageApplied : Bool?
    public var packageNumber: String?

	public required init?(map: Map) { }

	public func mapping(map: Map) {

		shippingGroupId <- map["shippingGroupId"]
        trackingNumber <- map["trackingNumber"]
		orderStatusHexColor <- map["orderStatusHexColor"]
		orderStatus <- map["orderStatus"]
		edd <- map["edd"]
		products <- map["products"]
        packageApplied <- map["packageApplied"]
        packageNumber <- map["packageNumber"]
	}

}
