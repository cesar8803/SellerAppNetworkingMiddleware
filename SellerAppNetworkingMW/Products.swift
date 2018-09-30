//
//  ZonasBlancas.swift
//  SellerAppNetworkingMW
//
//  Created by David on 21/09/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Products : Mappable {
	public var estado : String?
	public var displayName : String?
	public var productId : String?
	public var sku : String?
	public var bundleId : String?
	public var image : String?
	public var itemStatus : String?
	public var quantity : Int?
	public var productRatingCount : Int?
	public var productAvgRating : Double?
	public var canGoToPdp : Bool?
	public var isDownloadableProduct : Bool?
	public var isCanceled : Bool?

	public required init?(map: Map) { }

	public func mapping(map: Map) {

		estado <- map["estado"]
		displayName <- map["displayName"]
		productId <- map["productId"]
		sku <- map["sku"]
		bundleId <- map["bundleId"]
		image <- map["image"]
		itemStatus <- map["itemStatus"]
		quantity <- map["quantity"]
		productRatingCount <- map["productRatingCount"]
		productAvgRating <- map["productAvgRating"]
		canGoToPdp <- map["canGoToPdp"]
		isDownloadableProduct <- map["isDownloadableProduct"]
		isCanceled <- map["isCanceled"]
	}

}
