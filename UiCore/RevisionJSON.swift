//
//  RevisionJSON.swift
//  Razmeh
//
//  Created by Fariba on 12/31/1396 AP.
//  Copyright © 1396 AP Rahyab. All rights reserved.
//

import Foundation
import ObjectMapper


public class RevisionJSON: NSObject, Mappable {

    var items: [BasketItemJSON]?
    var wage: String?
    var created_at: String?
    var status: String?


    override public init() {
        super.init()
    }

    public required init?(map: Map) {

    }

    public func mapping(map: Map) {
        items <- map["items"]
        wage <- map["wage"]
    }
}
