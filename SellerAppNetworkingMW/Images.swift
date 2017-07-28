//
//  Images.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 19/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class Images: Mappable {
    
    public var lg: String?
    public var sm: String?
    public var xl: String?
    public var galleryImages: [String]?
    
    public required init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        lg <- map["lg"]
        sm <- map["sm"]
        xl <- map["xl"]
        galleryImages <- ["galleryImages"]
    }
    
}
