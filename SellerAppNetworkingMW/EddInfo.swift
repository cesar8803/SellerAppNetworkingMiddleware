//
//  EddInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class EddInfo: Mappable {
    
    public var isSpecialSale: Int?
    public var edd: String?
    public var eddEnabled: Int?
    public var eddErrorMessages: NSObject?
    public var startDayRangeSL: Float?
    public var endDayRangeSL: Float?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        isSpecialSale <- map["isSpecialSale"]
        edd <- map["edd"]
        eddEnabled <- map["eddEnabled"]
        eddErrorMessages <- map["eddErrorMessages"]
        startDayRangeSL <- map["startDayRangeSL"]
        endDayRangeSL <- map["endDayRangeSL"]
    }
    
}
