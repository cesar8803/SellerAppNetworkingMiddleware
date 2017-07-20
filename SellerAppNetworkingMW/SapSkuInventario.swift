//
//  SapSkuInventario.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

class SapSkuInventario: Mappable{
    
    public var Disp: String?
    public var Sku: String?
    public var Piso: String?
    public var Intransfer: String?
    public var Pdis: String?
    public var Locacion: String?
    public var Inprocess: String?
    public var Onorder: String?
    public var Envi: String?
    public var Intransit: String?
    public var Bode: String?
    public var Apar: String?
    
    public required init?(map: Map){
    }
    
    func mapping(map: Map) {
        Disp <- map["Disp"]
        Sku <- map["Sku"]
        Piso <- map["Piso"]
        Intransfer <- map["Intransfer"]
        Pdis <- map["Pdis"]
        Locacion <- map["Locacion"]
        Inprocess <- map["Inprocess"]
        Onorder <- map["Onorder"]
        Envi <- map["Envi"]
        Intransit <- map["Intransit"]
        Bode <- map["Bode"]
        Apar <- map["Apar"]
    }
    
}
