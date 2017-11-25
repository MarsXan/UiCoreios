//
//  CustomerJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/17/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class CustomerJSON: BaseResponse {
    var userId: Int?
    var name: String?
    var lastName: String?
    var cellPhone: String?
    var phones: [String]?
    var credit: String?
    var email: String?
    var status: String?
    var photo: String?


    override public init() {
        super.init()
    }

    public required init?(map: Map) {
        super.init(map: map)
    }

    override public func mapping(map: Map) {
        self.userId <- map["id"]
        self.name <- map["name"]
        self.lastName <- map["last_name"]
        self.cellPhone <- map["cell_phone"]
        self.phones <- map["phones"]
        self.credit <- map["credit"]
        self.email <- map["email"]
        self.status <- map["status"]
        self.photo <- map["photo"]
    }
}
