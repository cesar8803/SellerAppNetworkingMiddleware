//
//  MiddlewareShippingAddress.swift
//  MiddlewareServices
//
//  Created by Stephane Gardon on 15/03/15.
//  Copyright (c) 2018 Liverpool. All rights reserved.
//

import UIKit

public class MiddlewareShippingAddress: NSObject {
    
    public var firstName        : String = ""
    public var lastName         : String = ""
    public var street           : String = ""
    public var number           : String = ""
    public var interiorNumber   : String = ""
    public var additionalInfo   : String = ""
    public var settlement       : String = ""
    public var township         : String = ""
    public var city             : String = ""
    public var state            : String = ""
    public var zipCode          : String = ""
    public var homePhone        : String = ""
    public var mobilePhone      : String = ""
    // Store Data:
    public var colony           : String = ""
    public var CCModule         : String = ""
    public var name             : String = ""
    public var key              : String = ""
    public var storeNumber      : String = ""
    public var country          : String = ""
    public var street1          : String = ""
    public var street2          : String = ""
    public var tipoAsentamiento : String = ""
    public var municipio        : String = ""
    
    public override init() {
        
    }
    
    public init(address: [String : Any]) {
        if let firstName = address["firstName"] as? String {
            self.firstName = firstName
        }
        if let lastName = address["lastName"] as? String {
            self.lastName = lastName
        }
        if let street = address["calle"] as? String {
            self.street = street
        }
        if let city = address["ciudad"] as? String {
            self.city = city
        }
        if let key = address["clave"] as? String {
            self.key = key
        }
        if let colony = address["colonia"] as? String {
            self.colony = colony
        }
        if let zipCode = address["cp"] as? String {
            self.zipCode = zipCode
        }
        if let street1 = address["entreCalle"] as? String {
            self.street1 = street1
        }
        if let state = address["estado"] as? String {
            self.state = state
        }
        if let CCModule = address["moduloCC"] as? String {
            self.CCModule = CCModule
        }
        if let name = address["nombre"] as? String {
            self.name = name
        }
        if let storeNumber = address["numTienda"] as? String {
            self.storeNumber = storeNumber
        }
        if let number = address["numero"] as? String {
            self.number = number
        }
        if let country = address["pais"] as? String {
            self.country = country
        }
        if let homePhone = address["telefono"] as? String {
            self.homePhone = homePhone
        }
        if let street2 = address["yCalle"] as? String {
            self.street2 = street2
        }
        if let tipoAsentamiento = address["tipoAsentamiento"] as? String {
            self.tipoAsentamiento = tipoAsentamiento
        }
        if let municipio = address["municipio"] as? String {
            self.municipio = municipio
        }
        if let intNumber = address["interiorNumber"] as? String {
            self.interiorNumber = intNumber
        }
    }
}

