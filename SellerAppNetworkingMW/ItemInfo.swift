//
//  ItemInfo.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class ItemInfo: Mappable {
    public var image : String?
    public var quantity : String?
    public var quantityAvailable : String?
    public var displayName : String?
    public var desc : String?
    public var deliveryMode : String?
    public var deliveryType : String?
    public var salePrice : Int?
    public var listPrice : Int?
    public var catalogRedirectionURL : String?
    public var giftItemId : String?
    public var skuId : String?
    public var isFavourite : Bool?
    public var availability : String?
    public var purchaseItemId : String?
    public var actionType : String?
    public var imageURL : String?
    public var price : Int?
    public var modeofDelivery : String?
    public var bonusInfo : String?
    public var messageInfo : String?
    public var pedidoNo : String?
    public var purchasedDate : String?
    public var purchaseTicketId : String?
    public var tiendaNumber : String?
    public var terminalNumber : String?
    public var authCode : String?
    public var refundAmount : String?
    public var cancelAmount : String?
    public var priceperUnit : String?
    public var unitsBought : String?
    public var totalUnits : String?
    public var convertedConversation : String?
    public var reasonForCancelorReturn : String?
    public var itemChecked : String?
    public var name : String?
    public var bonusMessage : String?
    public var status : String?
    public var addressId : String?
    public var productType : String?
    public var departmentId : String?
    public var color : String?
    public var size : String?
    public var material : String?
    public var texture : String?
    public var deliveryStatus : String?
    public var eventRecipientIndex : String?
    public var guestInfo : GuestInfo?
    public var purchaseInfo : PurchaseInfo?
    public var totalExpAmount : Int?
    public var quantityDesired : String?
    public var isItemCheked : Bool?
    
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
    

		 image <- map["image"]
		 quantity <- map["quantity"]
		 quantityAvailable <- map["quantityAvailable"]
		 displayName <- map["displayName"]
		 desc <- map["desc"]
		 deliveryMode <- map["deliveryMode"]
		 deliveryType <- map["deliveryType"]
		 salePrice <- map["salePrice"]
		 listPrice <- map["listPrice"]
		 catalogRedirectionURL <- map["catalogRedirectionURL"]
		 giftItemId <- map["giftItemId"]
		 skuId <- map["skuId"]
		 isFavourite <- map["isFavourite"]
		 availability <- map["availability"]
		 purchaseItemId <- map["purchaseItemId"]
		 actionType <- map["actionType"]
		 imageURL <- map["imageURL"]
		 price <- map["price"]
		 modeofDelivery <- map["modeofDelivery"]
		 bonusInfo <- map["bonusInfo"]
		 messageInfo <- map["messageInfo"]
		 pedidoNo <- map["pedidoNo"]
		 purchasedDate <- map["purchasedDate"]
		 purchaseTicketId <- map["purchaseTicketId"]
		 tiendaNumber <- map["tiendaNumber"]
		 terminalNumber <- map["terminalNumber"]
		 authCode <- map["authCode"]
		 refundAmount <- map["refundAmount"]
		 cancelAmount <- map["cancelAmount"]
		 priceperUnit <- map["priceperUnit"]
		 unitsBought <- map["unitsBought"]
		 totalUnits <- map["totalUnits"]
		 convertedConversation <- map["convertedConversation"]
		 reasonForCancelorReturn <- map["reasonForCancelorReturn"]
		 itemChecked <- map["itemChecked"]
		 name <- map["name"]
		 bonusMessage <- map["bonusMessage"]
		 status <- map["status"]
		 addressId <- map["addressId"]
		 productType <- map["productType"]
		 departmentId <- map["departmentId"]
		 color <- map["color"]
		 size <- map["size"]
		 material <- map["materiaL"]
		 texture <- map["texture"]
		 deliveryStatus <- map["deliveryStatus"]
        switch map["eventRecipientIndex"].currentValue {
        case (let v as String):
            eventRecipientIndex = v
        case (let v as Int):
            eventRecipientIndex = String(v)
        default:
            debugPrint("You should add another kind of data")
        }
		 guestInfo <- map["guestInfo"]
		 purchaseInfo <- map["purchaseInfo"]
		 totalExpAmount <- map["totalExpAmount"]
		 quantityDesired <- map["quantityDesired"]
		 isItemCheked <- map["isItemCheked"]
	}

}
