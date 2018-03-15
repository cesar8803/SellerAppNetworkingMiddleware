//
//  ResponseMiddleware.swift
//  SellerAppNetworkingMW
//
//  Created by Stephane Gardon on 13/03/18.
//  Copyright © 2018 Liverpool. All rights reserved.
//

import Foundation
import Alamofire

extension DataRequest
{
    
    public func responseMiddleware(completionHandler: @escaping (DataResponse<Data>) -> Void) -> Self
    {
        
        return responseData(completionHandler: { (response) in
            
            let queue = DispatchQueue(label: "Services.Middleware.Concurrent")
            queue.async {
                var newResponse = response
                if let theError = response.result.error{
                    if (theError as NSError).code == 3840 {
                        let error:NSError = NSError(domain: NSCocoaErrorDomain, code: 3840, userInfo:[NSLocalizedDescriptionKey:"Servicio no disponible."])
                        let newResult = Result<Data>.failure(error)
                        newResponse = DataResponse(request: response.request, response: response.response, data: response.data, result: newResult)
                    }
                }
                completionHandler(newResponse)
            }
            
        })
        
    }
}
