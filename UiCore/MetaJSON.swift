//
//  MetaJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/24/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class MetaJSON: BaseResponse {
    var code :Int?
    var title :String?
    
    required public init?(map: Map) {
        super.init(map: map)
    }
    override public func mapping(map: Map) {
        self.code <- map["code"]
        self.title <- map["title"]
    }
}
