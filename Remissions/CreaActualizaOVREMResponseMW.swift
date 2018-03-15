//
//  CreaActualizaOVREMResponseMW.swift
//  SellerAppNetworkingWL
//
//  Created by Stephane Gardon on 14/03/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class CreaActualizaOVREMResponseMW: Mappable{
    public var CodRespuesta: String?
    public var DescRespuesta: String?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        CodRespuesta <- map["CodRespuesta"]
        DescRespuesta <- map["DescRespuesta"]
    }
}
