//
//  ActiveOrderStatus.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/16/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper


public class ActiveOrderStatus: BaseResponse {
    
    var id :Int?
    var status :String?
    var customer_order_verification :String?
    var biker_order_verification :String?

public required init?(map: Map) {
        fatalError("init(map:) has not been implemented")
    }
    override public func mapping(map: Map) {
       id <- map["id"]
        status <- map["status"]
        customer_order_verification <- map["customer_order_verification"]
        biker_order_verification <- map["biker_order_verification"]
    }
}
