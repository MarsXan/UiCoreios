//
//  File.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/25/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper


public class VehicleTypeJSON: BaseResponse {

    var id: Int?
    var vehicle_group: String?
    var vehicle_type: String?
    var vehicle_icon: String?

    public required init?(map: Map) {
        super.init(map: map)
    }

    override public func mapping(map: Map) {
        self.id <- map["id"]
        self.vehicle_group <- map["vehicle_group"]
        self.vehicle_type <- map["vehicle_type"]
        self.vehicle_icon <- map["vehicle_icon"]
    }

}
