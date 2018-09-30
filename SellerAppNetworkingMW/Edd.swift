//
//  ZonasBlancas.swift
//  SellerAppNetworkingMW
//
//  Created by David on 21/09/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Edd : Mappable {
    public var eddMessage : String?
    public var eddError : String?
    public var eddDisclaimer : String?
    public var eddDisclaimerHexColor : String?
    
    public required init?(map: Map) { }
    
    public func mapping(map: Map) {
        
        eddMessage <- map["eddMessage"]
        eddError <- map["eddError"]
        eddDisclaimer <- map["eddDisclaimer"]
        eddDisclaimerHexColor <- map["eddDisclaimerHexColor"]
    }
    
}
