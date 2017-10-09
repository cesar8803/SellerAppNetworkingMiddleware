//
//  PDPParameters.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 20/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import Alamofire

public protocol PDP_Mandatory {
    var product_sku: String {get set}
    var store_code: String {get set}
}

public enum PDP_Parameters_Mandatory: String {
    case product_sku = "sku"
    case store_code = "store-code"
}

public enum PDP_Parameters: String {
    case terminal_code = "terminal-code"
    case user_id = "id-user"
}

public struct PDP_MandatoryParams: PDP_Mandatory {
    
    public var product_sku: String
    public var store_code: String

    public func getParameters() -> Parameters {
        return [PDP_Parameters_Mandatory.product_sku.rawValue : product_sku,
                PDP_Parameters_Mandatory.store_code.rawValue : store_code]
    }
    
    public init(product_sku: String, store_code: String) {
        self.product_sku = product_sku
        self.store_code = store_code
    }

}

public struct PDP_Optional<T> {
    
    public let type: PDP_Parameters
    public let value: T
    public init(type: PDP_Parameters, value: T) {
        self.type = type
        self.value = value
    }
    
}
