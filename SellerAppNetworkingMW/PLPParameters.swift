//
//  PLP_Parameters.swift
//  SellerAppNetworkingMW
//
//  Created by Bernardino Guerrero Ibarra on 6/26/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import Alamofire

public protocol PLP_Mandatory
{
    var search_string:String {get set}
    var store_code:String {get set}
    var terminal_code:String {get set}
}

public enum PLP_Parameters_Mandatory:String
{
    case store_code = "store-code"
    case terminal_code = "terminal-code"
    case search_string = "search-string"
}

public enum PLP_Parameters:String
{
    //optionals
    case category_id = "category-id"
    case sort_option = "sort-option"
    case refinement_options = "refinement-options"
    case page_number = "page-number"
    case number_of_items_per_page = "number-of-items-per-page"
    case force_plp = "force-plp"
    case group_type = "group-type"
}


public struct PLP_MandatoryParams:PLP_Mandatory
{
    public var search_string:String
    public var store_code:String
    public var terminal_code:String
    
    public func getParameters()->Parameters
    {
        return [PLP_Parameters_Mandatory.search_string.rawValue: search_string,
                PLP_Parameters_Mandatory.store_code.rawValue: store_code,
                PLP_Parameters_Mandatory.terminal_code.rawValue: terminal_code]
    }
    
    public init(search_string:String, store_code:String, terminal_code:String){
        self.search_string = search_string
        self.store_code = store_code
        self.terminal_code = terminal_code
    }
    
}


public struct PLP_Optional<T>
{
    public let type:PLP_Parameters
    public let value:T
    public init(type:PLP_Parameters, value:T)
    {
        self.type = type
        self.value = value
    }
}






