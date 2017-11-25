//
//  ErrorJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/9/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class ErrorJSON: BaseResponse {
    var code :Int?
    var title :String?
    var desc :String?
    
    required public init?(map: Map) {
        super.init(map: map)
    }
    override public func mapping(map: Map) {
        self.code <- map["code"]
        self.title <- map["title"]
        self.desc <- map["desc"]
    }
}
