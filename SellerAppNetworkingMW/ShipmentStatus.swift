//
//  ShipmentStatus.swift
//  SellerAppNetworkingMW
//
//  Created by David on 10/2/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ShipmentStatus : Mappable {
    public var giftRegistryEventNumber : String?
    public var beneficiaryName : String?
    public var edd : String?
    public var canGoToPdp : String?
    public var packageEdd : String?
    public var shippingGroupId : String?
    public var skuId : String?
    public var existInCatalog : String?
    public var thirdPartyLink : String?
    public var availableOnInventory : String?
    public var rateSeller : Bool?
    public var customerRating : Double?
    public var sellerSkuId : String?
    public var inventoryStatus : String?
    public var shippingCarrierType : String?
    public var currentStage : String?
    public var displayImage : String?
    public var status : StatusShipment?
    public var sellerName : String?
    public var sellerOperatorId : String?
    public var stages : [StagesShipment]?
    public var thirdParty3PLNum : String?
    public var customerComment : String?
    public var marketplaceMessage : String?
    public var eddError : String?
    public var displayName : String?
    public var deliveryAddress : String?
    
    public required init?(map: Map) {}
    
    public func mapping(map: Map) {
        giftRegistryEventNumber <- map["giftRegistryEventNumber"]
        beneficiaryName <- map["beneficiaryName"]
        edd <- map["edd"]
        canGoToPdp <- map["canGoToPdp"]
        packageEdd <- map["packageEdd"]
        shippingGroupId <- map["shippingGroupId"]
        skuId <- map["skuId"]
        existInCatalog <- map["existInCatalog"]
        thirdPartyLink <- map["thirdPartyLink"]
        availableOnInventory <- map["availableOnInventory"]
        rateSeller <- map["rateSeller"]
        customerRating <- map["customerRating"]
        sellerSkuId <- map["sellerSkuId"]
        inventoryStatus <- map["inventoryStatus"]
        shippingCarrierType <- map["shippingCarrierType"]
        currentStage <- map["currentStage"]
        displayImage <- map["displayImage"]
        status <- map["status"]
        sellerName <- map["sellerName"]
        sellerOperatorId <- map["sellerOperatorId"]
        stages <- map["stages"]
        thirdParty3PLNum <- map["thirdParty3PLNum"]
        customerComment <- map["customerComment"]
        marketplaceMessage <- map["marketplaceMessage"]
        eddError <- map["eddError"]
        displayName <- map["displayName"]
        deliveryAddress <- map["deliveryAddress"]
    }    
}
