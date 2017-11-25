//
//  TransactionItemJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/21/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class TransactionItemJSON:NSObject, Mappable {
    var trans_id :Int?
    var des :String?
    var order_id :Int?
    var created_at :String?
    var user_id :Int?
    var current_credit :String?
    var previous_credit :String?
    var time :String?
    var date :String?
    var increases_price :String?
    var reduction_price :String?
    var order_registration_number :String?
    var description_ :String?
		var order_price :String?
		var en_description :String?
		var payment_type :String?
  
    override public init() {
        super.init()
    }

public required init?(map: Map) {}

public func mapping(map: Map) {
        trans_id <- map["id"]
        order_id <- map["order_id"]
        created_at <- map["created_at"]
        user_id <- map["user_id"]
        current_credit <- map["current_credit"]
        previous_credit <- map["previous_credit"]
        time <- map["time"]
        date <- map["date"]
        description_ <- map["description"]
        order_price <- map["order_price"]
        increases_price <- map["increases_price"]
        reduction_price <- map["reduction_price"]
        en_description <- map["en_description"]
        order_registration_number <- map["order_registration_number"]
        payment_type <- map["payment_type"]
    }
}
