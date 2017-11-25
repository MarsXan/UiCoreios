//
//  BikerJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/3/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper


public struct BikerJSON: Mappable {
    var biker_id: Int?
    var biker_name: String?
    var biker_last_name: String?
    var vehicle_type: String?
    var status: String?
    var service_status: String?
    var latitude: String?
    var longitude: String?

    public init?(map: Map) {
    }

    public mutating func mapping(map: Map) {
        biker_id <- map["id"]
        biker_name <- map["name"]
        biker_last_name <- map["last_name"]
        vehicle_type <- map["vehicle_type"]
        status <- map["status"]
        service_status <- map["service_status"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
    }
}


