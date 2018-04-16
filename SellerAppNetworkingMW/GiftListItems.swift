//
//  GiftListItems.swift
//  SellerAppNetworkingMW
//
//  Created by Oscar Morales on 16/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class GiftListItems: Mappable {
 
    public var giftListItemId : String?
    public var skuId : String?
    public var eventRecipientIndex : Int?
    public var siteId : String?
    public var displayName : String?
    public var description : String?
    public var quantityDesired : String?
    public var unitPrice : String?
    public var favoriteChoice : String?
    public var giftType : String?
    public var createdDate : String?
    public var channelType : String?
    public var productType : String?
    public var departmentId : String?
    public var departmentName : String?
    public var thumbnailImageURL : String?
    public var largeImageURL : String?
    public var smallImageURL : String?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        giftListItemId <- map["giftListItemId"]
        skuId <- map["skuId"]
        eventRecipientIndex <- map["eventRecipientIndex"]
        siteId <- map["siteId"]
        displayName <- map["displayName"]
        description <- map["description"]
        quantityDesired <- map["quantityDesired"]
        unitPrice <- map["unitPrice"]
        favoriteChoice <- map["favoriteChoice"]
        giftType <- map["giftType"]
        createdDate <- map["createdDate"]
        channelType <- map["channelType"]
        productType <- map["productType"]
        departmentId <- map["departmentId"]
        departmentName <- map["departmentName"]
        thumbnailImageURL <- map["thumbnailImageURL"]
        largeImageURL <- map["largeImageURL"]
        smallImageURL <- map["smallImageURL"]
    }
}
