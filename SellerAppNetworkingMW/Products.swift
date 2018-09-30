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
    public var displayName : String?
    public var productId : String?
    public var sku : String?
    public var bundleId : String?
    public var image : String?
    public var itemStatus : String?
    public var productColor : String?
    public var productSize : String?
    public var quantity : Int?
    public var productRatingCount : Int?
    public var productAvgRating : Int?
    public var canGoToPdp : Bool?
    public var isDownloadableProduct : Bool?
    public var isCanceled : Bool?
    public var marketplaceMessage : String?
    public var sellerName : String?
    public var sellerSkuId : String?
    public var sellerOperatorId : String?

	public required init?(map: Map) { }

	public func mapping(map: Map) {

        displayName <- map["displayName"]
        productId <- map["productId"]
        sku <- map["sku"]
        bundleId <- map["bundleId"]
        image <- map["image"]
        itemStatus <- map["itemStatus"]
        productColor <- map["productColor"]
        productSize <- map["productSize"]
        quantity <- map["quantity"]
        productRatingCount <- map["productRatingCount"]
        productAvgRating <- map["productAvgRating"]
        canGoToPdp <- map["canGoToPdp"]
        isDownloadableProduct <- map["isDownloadableProduct"]
        isCanceled <- map["isCanceled"]
        marketplaceMessage <- map["marketplaceMessage"]
        sellerName <- map["sellerName"]
        sellerSkuId <- map["sellerSkuId"]
        sellerOperatorId <- map["sellerOperatorId"]
	}
}
