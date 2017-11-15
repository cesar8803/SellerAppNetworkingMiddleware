//
//  InventarioSOMS.swift
//  SellerAppNetworkingMW
//
//  Created by Josue Maqueda Flores on 14/11/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class InventarioSOMSMW: Mappable
{
    public var getConsultaSkuPoolResponse   : GetConsultaSkuPoolResponseMW?
    public var isSuccessful                 : Bool?
    
    public required init?(map: Map)
    {
    }
    
    public func mapping(map: Map){
        getConsultaSkuPoolResponse <- map["getConsultaSKUPoolResponse"]
        isSuccessful <- map["isSuccessful"]
    }
    
}
