//
//  Status.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 16/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Status: Mappable {
    public var status : String?
    public var errorDescription : String?
    public var detailedErrorDescription : String?
    public var statusCode : Int?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        status <- map["status"]
        errorDescription <- map["errorDescription"]
        detailedErrorDescription <- map["detailedErrorDescription"]
        statusCode <- map["statusCode"]
    }
}
