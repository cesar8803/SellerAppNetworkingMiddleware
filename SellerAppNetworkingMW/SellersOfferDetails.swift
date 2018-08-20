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
	public var sellerRating : Int?
    public var sellerSkuId : String?
	public var promoPrice : Double?
	public var listPrice : Double?
	public var sellerId : String?
	public var allowLPPromotions : Bool?
    public var salePrice : Double?
	public var totalReviews : String?
	public var leadTimeToShip : String?
	public var sellerName : String?
	public var sellerOperatorId : String?
	public var offerId : String?

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
