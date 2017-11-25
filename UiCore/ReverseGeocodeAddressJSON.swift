//
//  ReverseGeocodeAddressJSON.swift
//  PeykSabzBadpa
//
//  Created by Fariba on 12/17/1396 AP.
//  Copyright © 1396 AP test. All rights reserved.
//

import Foundation
import ObjectMapper

public class ReverseGeocodeAddressJSON: BaseResponse {

    var regionId: Int?
    var name: String?
    var center: [String]?
    var polygons: Polygons?

    let transformCenter = TransformOf<[String], [Double]>(fromJSON: { (value: [Double]?) -> [String]? in
        if let coordList = value, coordList.count == 2 {
            return [String(coordList[1]), String(coordList[0])]
        }
        return nil
    }, toJSON: { (value: [String]?) -> [Double]? in
        if let coordList = value {
            return [Double(coordList[1])!, Double(coordList[0])!]
        }
        return nil
    })

    required public init?(map: Map) {
        super.init(map: map)
    }

    override public func mapping(map: Map) {
        regionId <- map["regionId"]
        name <- map["name"]
        center <- (map["center"], transformCenter)
        polygons <- map["polygons"]
    }
}

public struct Polygons: Mappable {
    var type: String?
    var coordinates: [[String]]?

    let transformCoordinates = TransformOf<[[String]], [[Double]]>(fromJSON: { (value: [[Double]]?) -> [[String]]? in
        if let coordList = value {
            var locs = [[String]]()
            for item in coordList {
                locs.append([String(item[1]), String(item[0])])
            }
            return locs
        }
        return nil
    }, toJSON: { (value: [[String]]?) -> [[Double]]? in
        if let location = value {
            var locations = [[Double]]()
            for item in location {
                locations.append([Double(item[1])!, Double(item[0])!])
            }
            return locations
        }
        return nil
    })

    public init?(map: Map) {
    }

    public mutating func mapping(map: Map) {
        type <- map["type"]
        coordinates <- (map["coordinates"], transformCoordinates)
    }
}
