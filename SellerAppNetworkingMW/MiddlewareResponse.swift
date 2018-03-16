//
//  MiddlewareResponse.swift
//  SellerAppNetworkingMW
//
//  Created by Luis Guillermo Cuevas García on 14/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class MiddlewareResponse: Mappable{
    public var results: [Results]?
    public var isSuccessful: Int?
    public var totalNumResults: Float?
    
    public var responseCreaActualizaOVREMSterling: ResponseCreaActualizaOVREMSterlingMW?
    public var responseCrearOrden: ResponseCrearOrdenMW?
    public var responseCreaActualizaOVREM: ResponseCreaActualizaOVREMMW?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        results <- map["results"]
        isSuccessful <- map["isSuccessful"]
        totalNumResults <- map["totalNumResults"]
        
        responseCreaActualizaOVREMSterling <- map["responseCreaActualizaOVREMSterling"]
        responseCrearOrden <- map["responseCrearOrden"]
        responseCreaActualizaOVREM <- map["responseCreaActualizaOVREM"]
    }
}
