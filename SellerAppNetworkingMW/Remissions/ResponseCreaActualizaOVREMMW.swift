//
//  ResponseCreaActualizaOVREMMW.swift
//  SellerAppNetworkingWL
//
//  Created by Luis Guillermo Cuevas García on 30/09/17.
//  Copyright © 2017 Deloitte. All rights reserved.
//

import Foundation
import ObjectMapper

public class ResponseCreaActualizaOVREMMW: Mappable{
    public var isSuccessful: Bool?
    public var CreaActualizaOVREMResponse: CreaActualizaOVREMResponseMW?
    
    public required init?( map: Map){
    }
    public func mapping(map: Map){
        isSuccessful <- map["isSuccessful"]
        CreaActualizaOVREMResponse <- map["CreaActualizaOVREMResponse"]
    }
}
