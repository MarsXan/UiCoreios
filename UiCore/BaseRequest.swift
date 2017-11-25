//
//  BaseRequest.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/5/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class  BaseRequest: NSObject, Mappable {
    
    override public init() {
        super.init()
    }

public required init?(map: Map) {
        
    }
    public  func mapping(map: Map) {
        
    }
}
