//
//  AddressBookItemJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/20/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class AddressBookItemJSON:NSObject, Mappable {
    var add_id :Int?
    var fullname :String?
    var type :String?
    var title :String?
    var address :AddressJSON?
    var latitude :Double?
    var longitude :Double?
    var phone :String?
    var mobile :String?

    override public init() {
        super.init()
    }

public required init?(map: Map) {
        
    }

public func mapping(map: Map) {
        add_id <- map["id"]
        fullname <- map["fullname"]
        type <- map["type"]
        title <- map["title"]
        address <- map["address"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
        phone <- map["phone"]
        mobile <- map["mobile"]
    }
}
