//
//  BusStopAO.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 05/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import JASON

struct BusStopAO
{
    let stopNumber: String
    let stopName: String
    let stopType: String
    
    var stopLines: [BusAO]
}

extension BusStopAO
{
    init?(json: JSON)
    {
        guard let stopNumber = json["stopNumber"].string, let stopName = json["stopName"].string, let stopType = json["stopType"].string else { return nil }
        
        self.stopNumber = stopNumber
        self.stopName = stopName
        self.stopType = stopType
        self.stopLines = []
        
        guard let buses = json["lines"].jsonArray else {
            return
        }
        
        for bus in buses {
            if let busAO = BusAO(json: bus) {
                stopLines.append(busAO)
            }
        }
    }
}

extension BusStopAO
{
    static func one(stopNumber: String) -> Resource<BusStopAO>
    {
        let url = URL(string: String(format: "http://api.interurbanos.welbits.com/v1/stop/%@", stopNumber))!
        
        return Resource<BusStopAO>(url: url, parseJSON:({ json in
            return BusStopAO(json: JSON(json))
        }))
    }
}
