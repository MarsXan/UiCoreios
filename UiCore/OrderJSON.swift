//
//  OrderJSON.swift
//  Razmeh
//
//  Created by Fariba on 12/5/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import Foundation





public  class OrderJSON: NSObject {
    public var customer_photo: String?
    public var biker_photo: String?

    public var title: String?
    public var order_id: Int?
    public var customer_id: Int?
    public var price: [String: String]? //keys : wage & price_with_added_value

    
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

    

   
  override open func isEqual(_ object: Any?) -> Bool {
    if let other = object as? OrderJSON {
      return self.order_id == other.order_id && self.status == other.status && self.updated_at == other.updated_at
    } else {
      return false
    }
  }
}

