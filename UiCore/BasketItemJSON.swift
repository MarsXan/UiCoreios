//
//  BasketItemJSON.swift
//  Razmeh
//
//  Created by Fariba on 12/31/1396 AP.
//  Copyright © 1396 AP Rahyab. All rights reserved.
//

import Foundation
import ObjectMapper


public class BasketItemJSON: NSObject, Mappable {

    var item_id: Int?
    var name: String?
    var type: String?
    var count: String?
    var unit: String?
    var max_price: String?
    var brand: String? //sharhe kala
    var description_: String?

    var price: String?
    var created_at: String?
    var updated_at: String?
    var revision: Int?
    var revision_wage: String?
    var revision_status: String?
    var canceled_reason: String?
    var driver_brand: String?
    var store_name: String?
    var bought_date: String?
    var status: String?
    var latitude: String?
    var longitude: String?


    override public init() {
        super.init()
    }

    public required init?(map: Map) {
    }

    public func mapping(map: Map) {
        item_id <- map["id"]
        name <- map["name"]
        type <- map["type"]
        count <- map["count"]
        unit <- map["unit"]
        max_price <- map["max_price"]
        brand <- map["brand"]
        description_ <- map["description"]
        price <- map["price"]
        created_at <- map["created_at"]
        updated_at <- map["updated_at"]
        revision <- map["revision"]
        revision_wage <- map["revision_wage"]
        revision_status <- map["revision_status"]
        canceled_reason <- map["canceled_reason"]
        driver_brand <- map["driver_brand"]
        store_name <- map["store_name"]
        bought_date <- map["bought_date"]
        status <- map["status"]
        latitude <- map["latitude"]
        longitude <- map["longitude"]
    }

    override public func isEqual(_ object: Any?) -> Bool {
        if let other = object as? BasketItemJSON {
            return self.status == other.status && self.updated_at == other.updated_at
        } else {
            return false
        }
    }

}
