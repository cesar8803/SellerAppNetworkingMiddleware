//
//  GetConsultaSkuPoolResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Josue Maqueda Flores on 14/11/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class GetConsultaSkuPoolResponseMW: Mappable{
    public var getConsultaSKUPoolRecord: [GetConsultaSkuPoolRecordMW]?
    public var getConsultaSKUPoolHeader: GetConsultaSkuPoolHeaderMW?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        getConsultaSKUPoolRecord <- map["getConsultaSKUPoolRecord"]
        getConsultaSKUPoolHeader <- map["getConsultaSKUPoolHeader"]
    }
}
