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
    public var productId: String?
    public var isMarketPlace : Bool?
    public var sellerId : String?
    
    public required init?(map: Map)
    {
        type <- map["type"]
        label <- map["label"]
        breadCrumb <- map["breadCrumb"]
        showView <- map["showView"]
        redirectsToWeb <- map["redirectsToWeb"]
        categoryId <- map["categoryId"]
        image <- map["image"]
        navigationState <- map["navigationState"]
        productId <- map["productId"]
        //isMarketPlace <- map["isMarketPlace"]
        switch map["isMarketPlace"].currentValue{
        case (let v as String)  : isMarketPlace = Bool(v)
        case (let v as Bool)    : isMarketPlace = v
        default                 : debugPrint("You should add another kind of data")
        }
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
        productId <- map["productId"]
        sellerId <- map["sellerId"]
        //isMarketPlace <- map["isMarketPlace"]
        switch map["isMarketPlace"].currentValue{
        case (let v as String)  : isMarketPlace = Bool(v)
        case (let v as Bool)    : isMarketPlace = v
        default                 : debugPrint("You should add another kind of data")
        }
    }
}

