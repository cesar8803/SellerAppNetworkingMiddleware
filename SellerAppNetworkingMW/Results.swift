//
//  Results.swift
//  SellerAppNetworkingMW
//
//  Created by Luis Guillermo Cuevas García on 14/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Results: Mappable{
    public var type: String?
    public var label: String?
    public var breadCrumb: String?
    public var showView: String?
    public var redirectsToWeb: Int?
    public var categoryId: String?
    public var image: String?
    public var navigationState: String?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        type <- map["type"]
        label <- map["label"]
        breadCrumb <- map["breadCrumb"]
        showView <- map["showView"]
        redirectsToWeb <- map["redirectsToWeb"]
        categoryId <- map["categoryId"]
        image <- map["image"]
        navigationState <- map["navigationState"]
    }
}
