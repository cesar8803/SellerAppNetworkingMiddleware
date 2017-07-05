//
//  GiftRegistryParamaters.swift
//  SellerAppNetworkingMW
//
//  Created by Alejandro Hernandez on 04/07/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import Alamofire

public protocol GiftRegistry_Mandatory {
    
    var event_code: String {get set}
    var store_code: String {get set}
    var terminal_code: String {get set}
    
}

public enum GiftRegistry_Parameters_Mandatory: String {
    case event_code = "evento"
    case store_code = "store-code"
    case terminal_code = "terminal-code"
}

public enum PGiftRegistry_Parameters:String {
    
    case type_id = "tipo"
    
}

public struct GiftRegistry_MandatoryParams: GiftRegistry_Mandatory {
    
    public var event_code: String
    public var store_code: String
    public var terminal_code: String
    
    public func getParameters() -> Parameters {
        return [GiftRegistry_Parameters_Mandatory.event_code.rawValue : event_code, GiftRegistry_Parameters_Mandatory.store_code.rawValue : store_code, GiftRegistry_Parameters_Mandatory.terminal_code.rawValue : terminal_code]
    }
    
    public init(event_code: String, store_code: String, terminal_code: String) {
        self.event_code = event_code
        self.store_code = store_code
        self.terminal_code = terminal_code
    }
    
}

public struct GiftRegistry_Optional<T>{
    
    public let type: PGiftRegistry_Parameters
    public let value: T
    public init(type: PGiftRegistry_Parameters, value: T) {
        self.type = type
        self.value = value
    }
    
}
