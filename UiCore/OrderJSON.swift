//
//  OrderJSON.swift
//  Razmeh
//
//  Created by Fariba on 12/5/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import Foundation
import ObjectMapper




public  class OrderJSON: NSObject, Mappable {
    public var customer_photo: String?
    public var biker_photo: String?

    public var title: String?
    public var order_id: Int?
    public var customer_id: Int?
    public var price: [String: String]? //keys : wage & price_with_added_value

    public var dest_address: AddressJSON?
    public var destination_address: String?
    public var destination_latitude: String?
    public var destination_longitude: String?
    public var receiver_name: String?
    public var receiver_phones: [String]?
    public var receiver_cell_phone: String?

    public var status: String?
    public var registration_number: String?
    public var customer_order_verification: String?

    public var req_source_delivered_date: String?
    public var req_destination_delivered_date: String?
    public var updated_at: String?
    public var order_date: String?
    public var is_negotiable: Int?
    public var last_revision: Int?
    public var accepted_revision: Int?
    public var vehicle_type_id: String?
    public var vehicle_type: String?
    public var biker_assign_date: String?

    public var revisions: [RevisionJSON]?

    public var customer_name: String?
    public var customer_last_name: String?
    public var customer_cell_phone: String?
    public var pay_in: String? //source

    public var biker_name: String?
    public var biker_last_name: String?
    public var biker_id: String?
    public var biker_cell_phone: String?
    public var vehicle_number: String?
    public var wage_pay_method: String? //cash , credite
    public var items_pay_method: String?


    override public init() {
        super.init()
    }

    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        self.biker_photo <- map["biker_photo"]
        self.customer_photo <- map["customer_photo"]
        self.order_id <- map["id"]
        self.title <- map["title"]
        self.customer_id <- map["customer_id"]
        self.price <- map["price"]
        self.dest_address <- map["dest_address"]
        self.destination_latitude <- map["destination_latitude"]
        self.destination_longitude <- map["destination_longitude"]
        self.destination_address <- map["destination_address"]
        self.receiver_name <- map["receiver_name"]
        self.receiver_phones <- map["receiver_phones"]
        self.status <- map["status"]
        self.registration_number <- map["registration_number"]
        self.req_source_delivered_date <- map["req_source_delivered_date"]
        self.req_destination_delivered_date <- map["req_destination_delivered_date"]
        self.customer_order_verification <- map["customer_order_verification"]
        self.updated_at <- map["updated_at"]
        self.order_date <- map["order_date"]
        self.is_negotiable <- map["is_negotiable"]
        self.last_revision <- map["last_revision"]
        self.accepted_revision <- map["accepted_revision"]
        self.revisions <- map["revisions"]
        self.customer_name <- map["customer_name"]
        self.customer_last_name <- map["customer_last_name"]
        self.customer_cell_phone <- map["customer_cell_phone"]
        self.pay_in <- map["pay_in"]
        self.biker_name <- map["biker_name"]
        self.biker_last_name <- map["biker_last_name"]
        self.biker_id <- map["biker_id"]
        self.biker_cell_phone <- map["biker_cell_phone"]
        self.vehicle_number <- map["vehicle_number"]
        self.receiver_cell_phone <- map["receiver_cell_phone"]
        self.biker_assign_date <- map["biker_assign_date"]
        self.wage_pay_method <- map["wage_pay_method"]
        self.items_pay_method <- map["items_pay_method"]
    }
  override open func isEqual(_ object: Any?) -> Bool {
    if let other = object as? OrderJSON {
      return self.order_id == other.order_id && self.status == other.status && self.updated_at == other.updated_at
    } else {
      return false
    }
  }
}

