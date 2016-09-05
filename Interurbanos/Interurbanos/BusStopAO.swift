//
//  BusStopAO.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 18/08/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation
import JASON

struct BusStopAO
{
    let number: String
    let waitTime: String
    let source: String
    let lineBound: String
    let isNightLine: Bool
    
}

extension BusStopAO
{
    static func all(stopNumber: String) -> Resource<[BusStopAO]>
    {
        let url = URL(string: String(format: "http://api.interurbanos.welbits.com/v1/stop/%@", stopNumber))!
        
        return Resource<[BusStopAO]>(url: url, parseJSON:({ json in
            guard let dictionaries = json as? JSONDictionary else { return nil }
            let lines = JSON(dictionaries["lines"] as! [JSONDictionary])
            return lines.flatMap(BusStopAO.init)
        }))
    }
}

extension BusStopAO
{
    init?(json: JSON)
    {
        guard let number = json["lineNumber"].string, let waitTime = json["waitTime"].string, let source = json["source"].string, let lineBound = json["lineBound"].string, let isNightLine = json["isNightLine"].bool else { return nil }
        
        self.number = number
        self.waitTime = waitTime
        self.source = source
        self.lineBound = lineBound
        self.isNightLine = isNightLine
    }
}
