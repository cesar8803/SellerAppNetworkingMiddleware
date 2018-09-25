//
//  ZonasBlancas.swift
//  SellerAppNetworkingMW
//
//  Created by David on 21/09/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ZonasBlancas : Mappable {
    public var status : Status?
    public var blockedCpCodeList : [String]?
    
    public required init?(map: Map) {}
    
    public func mapping(map: Map) {
        status <- map["status"]
        blockedCpCodeList <- map["blockedCpCodeList"]
    }
}

