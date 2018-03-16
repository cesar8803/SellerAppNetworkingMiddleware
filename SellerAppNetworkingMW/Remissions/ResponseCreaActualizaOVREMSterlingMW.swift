//
//  ResponseCreaActualizaOVREMSterlingMW.swift
//  SellerAppNetworkingWL
//
//  Created by Luis Guillermo Cuevas García on 30/09/17.
//  Copyright © 2017 Deloitte. All rights reserved.
//

import Foundation
import ObjectMapper

public class ResponseCreaActualizaOVREMSterlingMW: Mappable{
    public var responseCrearOrden: ResponseCrearOrdenMW?
    public var responseCreaActualizaOVREM: ResponseCreaActualizaOVREMMW?
    public var isSuccessful: Int?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        isSuccessful <- map["isSuccessful"]
        responseCrearOrden <- map["responseCrearOrden"]
        responseCreaActualizaOVREM <- map["responseCreaActualizaOVREM"]
    }
}
