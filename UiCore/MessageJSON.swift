//
//  MessageJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/21/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class MessageJSON: NSObject, Mappable {
    var msg_id: Int?
    var user_id: Int?
    var title: String?
    var type: String?
    var message: String?
    var created_at: String?

    override init() {
        super.init()
    }

    public required init?(map: Map) {

    }

    public func mapping(map: Map) {
        msg_id <- map["id"]
        user_id <- map["user_id"]
        title <- map["title"]
        type <- map["type"]
        message <- map["message"]
        created_at <- map["created_at"]
    }
}
