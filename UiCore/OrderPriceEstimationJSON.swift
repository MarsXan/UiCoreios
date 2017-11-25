//
//  OrderPriceEstimationJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/21/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import ObjectMapper


public  class OrderPriceEstimationJSON: BaseRequest {
    
    var destination_latitude :Double?
    var destination_longitude :Double?
    var source_latitude :Double?
    var source_longitude :Double?
    var vehicle_type_id :Int?
    var round_trip :Bool?
    
    override public init() {
        super.init()
    }
    
    required public init?(map: Map) {
        super.init(map: map)
    }
    
    override public func mapping(map: Map) {
        destination_latitude <- map["destination_latitude"]
        destination_longitude <- map["destination_longitude"]
        source_latitude <- map["source_latitude"]
        source_longitude <- map["source_longitude"]
        vehicle_type_id <- map["vehicle_type_id"]
        round_trip <- map["round_trip"]
    }
}
