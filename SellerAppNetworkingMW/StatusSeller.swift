//
//  StatusSeller.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 22/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class StatusSeller : Mappable {
    public var statusCode : Int?
    public var status : String?
    public var errorDescription : String?
    public var detailedErrorDescription : String?
    
    public required init?(map: Map) {
        
    }
    
    public func mapping(map: Map) {
        
        statusCode <- map["statusCode"]
        status <- map["status"]
        errorDescription <- map["errorDescription"]
        detailedErrorDescription <- map["detailedErrorDescription"]
    }
    
}


