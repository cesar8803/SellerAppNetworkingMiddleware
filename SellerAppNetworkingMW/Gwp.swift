//
//  Gwp.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Gwp: Mappable {
    
    public var exclusiveOnlineMessage: NSObject?
    public var promotionalGiftKey: NSObject?
    public var promotionalGiftMessage: String?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        exclusiveOnlineMessage <- map["exclusiveOnlineMessage"]
        promotionalGiftKey <- map["promotionalGiftKey"]
        promotionalGiftMessage <- map["promotionalGiftMessage"]
    }
    
}
