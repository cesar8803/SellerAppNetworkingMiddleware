//
//  ZonasBlancas.swift
//  SellerAppNetworkingMW
//
//  Created by David on 21/09/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Payment : Mappable {
    public var total : Double?
	public var paymentType : String?
	public var paymentStatus : String?
	public var paymentStatusHexColor : String?
	public var expirationDate : String?
	public var referenceNumber : String?
	public var clabe : String?
	public var bankName : String?

	public required init?(map: Map) { }

	public func mapping(map: Map) {
        total <- map["total"]
		paymentType <- map["paymentType"]
		paymentStatus <- map["paymentStatus"]
		paymentStatusHexColor <- map["paymentStatusHexColor"]
		expirationDate <- map["expirationDate"]
		referenceNumber <- map["referenceNumber"]
		clabe <- map["clabe"]
		bankName <- map["bankName"]
	}

}
