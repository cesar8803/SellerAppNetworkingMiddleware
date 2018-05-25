//
//  MWResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Stephane Gardon on 24/05/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class MWResponse: Mappable {
    
    public var errors: [MWError]?
    
    required  public init?(map: Map){
    }
    public func mapping(map: Map){
        errors <- map["errors"]
    }
}

class MWError : Mappable {
    public var  descError, codError: String?
    
    required  public init?(map: Map){
    }
    public func mapping(map: Map){
        descError <- map["descError"]
        codError <- map["codError"]
    }
}
