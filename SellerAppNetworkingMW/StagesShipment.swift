//
//  ShipmentStatus.swift
//  SellerAppNetworkingMW
//
//  Created by David on 10/2/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//


import Foundation
import ObjectMapper

public class StagesShipment : Mappable {
	public var index : Int?
	public var stageName : String?
	public var stageDate : String?

	public required init?(map: Map) { }

	public func mapping(map: Map) {
		index <- map["index"]
		stageName <- map["stageName"]
		stageDate <- map["stageDate"]
	}
}
