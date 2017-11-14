//
//  GetConsultaSkuPoolResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Josue Maqueda Flores on 14/11/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class GetConsultaSkuPoolResponse: Mappable{
    public var getConsultaSKUPoolRecord: [GetConsultaSkuPoolRecord]?
    public var getConsultaSKUPoolHeader: GetConsultaSkuPoolHeader?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        getConsultaSKUPoolRecord <- map["getConsultaSKUPoolRecord"]
        getConsultaSKUPoolHeader <- map["getConsultaSKUPoolHeader"]
    }
}
