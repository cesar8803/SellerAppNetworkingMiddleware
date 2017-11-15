//
//  GetConsultaSkuPoolRecord.swift
//  SellerAppNetworkingMW
//
//  Created by Josue Maqueda Flores on 14/11/17.
//  Copyright © 2017 Liverpool. All rights reserved.
//

import Foundation
import ObjectMapper

public class GetConsultaSkuPoolRecordMW: Mappable{
    public var outPedidoCantPend: String?
    public var outPedidoFechaMinEntrega: String?
    public var outPedidoFechaCancelacion: String?
    public var outPedidoFechaCitaProveed: String?
    public var outPedidoCantidadPiezas: String?
    public var outPedidoEspecial: String?
    public var outPedidoID: String?
    
    public required init?(map: Map){
    }
    public func mapping(map: Map){
        outPedidoCantPend <- map["outPedidoCantPend"]
        outPedidoFechaMinEntrega <- map["outPedidoFechaMinEntrega"]
        outPedidoFechaCancelacion <- map["outPedidoFechaCancelacion"]
        outPedidoFechaCitaProveed <- map["outPedidoFechaCitaProveed"]
        outPedidoCantidadPiezas <- map["outPedidoCantidadPiezas"]
        outPedidoEspecial <- map["outPedidoEspecial"]
        outPedidoID <- map["outPedidoID"]
    }
}

