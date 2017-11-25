//
//  AddressJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/24/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import Foundation
import ObjectMapper


public class AddressJSON:NSObject, Mappable {
    var city :String?
    var district :String? = "_"
    var street :String?
    var no :String?
    var unit :String?

    override  public init() {
        super.init()
    }

public required init?(map: Map) {
        
    }

public func mapping(map: Map) {
        city <- map["map"]
        district <- map["district"]
        street <- map["street"]
        no <- map["no"]
        unit <- map["unit"]
    }
}
