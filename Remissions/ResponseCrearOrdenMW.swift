//
//  ResponseCrearOrdenMW.swift
//  SellerAppNetworkingMW
//
//  Created by Stephane Gardon on 14/03/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ResponseCrearOrdenMW: Mappable{
    public var outStatus: String?
    public var isSuccessful: Int?
    public var outMessage: String?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        outStatus <- map["outStatus"]
        isSuccessful <- map["isSuccessful"]
        outMessage <- map["outMessage"]
    }
}
