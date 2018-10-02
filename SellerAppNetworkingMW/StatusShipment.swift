//
//  ShipmentStatus.swift
//  SellerAppNetworkingMW
//
//  Created by David on 10/2/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//


import Foundation
import ObjectMapper

public class StatusShipment : Mappable {
	public var statusCode : Int?
	public var status : String?

	public required init?(map: Map) { }

	public func mapping(map: Map) {
		statusCode <- map["statusCode"]
		status <- map["status"]
	}
}
