//
//  SellersOfferDetails.swift
//  SellerAppNetworkingMW
//
//  Created by Emmanuel Casanas Cruz on 15/08/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class SellersOfferDetails : Mappable {
	var sellerRating : Int?
	var sellerSkuId : String?
	var promoPrice : Double?
	var listPrice : Double?
	var sellerId : String?
	var allowLPPromotions : Bool?
	var salePrice : Double?
	var totalReviews : String?
	var leadTimeToShip : String?
	var sellerName : String?
	var sellerOperatorId : String?
	var offerId : String?

    public required init?(map: Map) {

	}

    public func mapping(map: Map) {

		sellerRating <- map["sellerRating"]
		sellerSkuId <- map["sellerSkuId"]
		promoPrice <- map["promoPrice"]
		listPrice <- map["listPrice"]
		sellerId <- map["sellerId"]
		allowLPPromotions <- map["allowLPPromotions"]
		salePrice <- map["salePrice"]
		totalReviews <- map["totalReviews"]
		leadTimeToShip <- map["leadTimeToShip"]
		sellerName <- map["sellerName"]
		sellerOperatorId <- map["sellerOperatorId"]
		offerId <- map["offerId"]
	}

}
