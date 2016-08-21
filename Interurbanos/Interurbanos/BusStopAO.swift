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
    private static let url = URL(string: "")!
    
    static let all = Resource<[BusStopAO]>(url: url, parseJSON: { json in
        guard let dictionaries = json as? [JSONDictionary] else { return nil }
        return dictionaries.flatMap(BusStopAO.init)
    })
}

extension BusStopAO
{
    init?(dictionary: JSONDictionary)
    {
        
    }
}
