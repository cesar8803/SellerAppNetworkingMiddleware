//
//  NewProducts.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class NewProducts: Mappable{
    var imageUrl: String?
    var displayName: String?
    var repositoryId: String?
    
    required public init?(map: Map){
    }
    
    public func mapping(map: Map){
        imageUrl <- map["imageUrl"]
        displayName <- map["displayName"]
        repositoryId <- map["repositoryId"]
    }
}
