//
//  EvaltionsInfoBeanList.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 22/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class EvaltionsInfoBeanList : Mappable {
	public var lastName : String?
    public var commentDate : String?
	public var helpLink : String?
	public var grade : Int?
	public var comment : String?
	public var firstName : String?

	public required init?(map: Map) {

	}

	 public func mapping(map: Map) {

		lastName <- map["lastName"]
		commentDate <- map["commentDate"]
		helpLink <- map["helpLink"]
		grade <- map["grade"]
		comment <- map["comment"]
		firstName <- map["firstName"]
	}

}
