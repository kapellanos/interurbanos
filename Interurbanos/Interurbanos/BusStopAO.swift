//
//  BusStopAO.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 18/08/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation

struct BusStopAO
{
    static func all(stopNumber: String) -> Resource<[BusStopAO]>
    {
        let url = URL(string: String(format: "http://api.interurbanos.welbits.com/v1/stop/%@", stopNumber))!
        
        return Resource<[BusStopAO]>(url: url, parseJSON:({ json in
            guard let dictionaries = json as? JSONDictionary else { return nil }
            let lines = dictionaries["lines"] as! [JSONDictionary]
            return lines.flatMap(BusStopAO.init)
        }))
    }
}

extension BusStopAO
{
    init?(dictionary: JSONDictionary)
    {
        
    }
}
