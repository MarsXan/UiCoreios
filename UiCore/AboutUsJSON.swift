//
//  AboutUsJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/28/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class AboutUsJSON:NSObject, Mappable {
    var content_id :Int?
    var about_us :String?
    var email :String?
    var sms_number :String?
    var first_order_phone :String?
    var second_order_phone :String?
    var third_order_phone :String?
    var tracking_phone :String?
    var contract_phone :String?
    var facebook_link :String?
    var twitter_link :String?
    var google_plus_link :String?
    var instagram_link :String?
    var telegram_link :String?
    var address :String?
    var website :String?
    
    override public init() {
        super.init()
    }

public required init?(map: Map) {
        
    }

public func mapping(map: Map) {
        content_id <- map["id"]
        about_us <- map["about_us"]
        email <- map["email"]
        sms_number <- map["sms_number"]
        first_order_phone <- map["first_order_phone"]
        second_order_phone <- map["second_order_phon"]
        third_order_phone <- map["third_order_phone"]
        tracking_phone <- map["tracking_phone"]
        contract_phone <- map["contract_phone"]
        facebook_link <- map["facebook_link"]
        twitter_link <- map["twitter_link"]
        google_plus_link <- map["google_plus_link"]
        instagram_link <- map["instagram_link"]
        telegram_link <- map["telegram_link"]
        address <- map["address"]
        website <- map["website"]
    }
}
