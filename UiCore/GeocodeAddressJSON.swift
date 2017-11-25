//
//  GeocodeAddressJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/14/1395 AP.
//  Copyright © 1395 AP test. All rights reserved.
//

import Foundation
import ObjectMapper
import CoreLocation

public struct GeocodeAddressJSON: Mappable {
    
    var addressId :String?
    var regionId :String?
    var name :String?
    var center :[String]?
    var data :[[String]]?
    var congestionControl :Int?
    
    let transformCenter = TransformOf<[String], [Double]>(fromJSON: { (value: [Double]?) -> [String]? in
        if let coordList = value, coordList.count == 2 {
            return [String(coordList[1]),String(coordList[0])]
        }
        return nil
    }, toJSON: { (value: [String]?) -> [Double]? in
        if let coordList = value {
            return [Double(coordList[1])!, Double(coordList[0])!]
        }
        return nil
    })
    
    let transformData = TransformOf<[[String]], [[Double]]>(fromJSON: {(value: [[Double]]?) -> [[String]]? in
        if let coordList = value{
            var locs = [[String]]()
            for item in coordList {
                locs.append([String(item[1]),String(item[0])])
            }
            return locs
        }
        return nil
    },toJSON: {(value: [[String]]?) -> [[Double]]? in
        if let location = value {
            var locations = [[Double]]()
            for item in location {
                locations.append([Double(item[1])!, Double(item[0])!])
            }
            return locations
        }
        return nil
    })
    
    init?(map: Map) {
    }

public mutating func mapping(map: Map) {
        addressId <- map["id"]
        regionId <- map["regionId"]
        name <- map["name"]
        center <- (map["center"], transformCenter)
        data <- (map["data"],transformData)
        data <- map["data"]
        congestionControl <- map["congestionControl"]
    }
}
