//
//  CategoryList.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class CategoryList: Mappable {
	public var id : String?
	public var name : String?

	
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        id   <- map["id"]
        name   <- map["name"]
	}

}
