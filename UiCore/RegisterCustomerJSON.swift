//
//  RegisterCustomerJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/5/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import Foundation
import ObjectMapper


public class RegisterCustomerJSON: BaseRequest {
   
     required public init?(map: Map) {
        super.init(map: map)
    }
    
    override public func mapping(map: Map) {
        
    }
}
