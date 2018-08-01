//
//  EventSearchDetail.swift
//  SellerAppNetworkingMW
//
//  Created by Stéphane Gardon on 27/04/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class EventSearchDetail: Mappable {
    
	public var  recordsPerPage : String?
	public var  itemsCount : String?
	public var  totalRecords : String?
	public var  currentPage : String?
	public var  status : Status?
	public var  eventInfo : EventInfo?
	public var  addressInfo : [AddressInfo]?
	public var  categoryList : [CategoryList]?
	public var  categoryItemsInfo : [CategoryItemsInfo]?
	public var  celebratedList : [CelebratedList]?
    
    public required init?(map: Map){
    }
    
    public func mapping(map: Map){
        
        recordsPerPage <- map["recordsPerPage"]
        itemsCount <- map["itemsCount"]
        totalRecords <- map["totalRecords"]
        currentPage <- map["currentPage"]
        status <- map["status"]
        eventInfo <- map["eventInfo"]
        addressInfo <- map["addressInfo"]
        categoryList <- map["categoryList"]
        categoryItemsInfo <- map["categoryItemsInfo"]
        celebratedList <- map["celebratedList"]
    }
}
