//
//  PDPLevel.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class PDPLevel: Mappable{
    
    public var scripts: String?
    public var related: Recommendations?
    public var buscaProducto: BuscaProducto?
    public var productInfo: ProductInfo?
    public var WARNING: String?
    public var isSuccessful: Int?
    public var recommendations: Recommendations?
    public var Inventario: Inventario?
    public var attributes: Attributes?
    public var numberInWarehouse: String?
    public var availableToShip: Int?
    public var InventarioFull: InventarioFull?
    public var variantsInfo: [VariantsInfo]?
    //
    public var InventarioSOMSMW:InventarioSOMSMW?
    // MKP
    public var isMarketPlace: Bool?
    public var marketplaceOffers: MarketPlaceOffers?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        scripts <- map["scripts"]
        related <- map["related"]
        buscaProducto <- map["buscaProducto"]
        productInfo <- map["productInfo"]
        WARNING <- map["WARNING"]
        isSuccessful <- map["isSuccessful"]
        recommendations <- map["recommendations"]
        Inventario <- map["Inventario"]
        attributes <- map["attributes"]
        numberInWarehouse <- map["numberInWarehouse"]
        availableToShip <- map["availableToShip"]
        InventarioFull <- map["InventarioFull"]
        variantsInfo <- map["variantsInfo"]
        //
        InventarioSOMSMW <- map["InventarioSOMS"]
        // MKP
        isMarketPlace <- map["isMarketPlace"]
        marketplaceOffers <- map["marketplaceOffers"]
    }
    
}
