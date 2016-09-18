//
//  BusStop.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 08/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

struct BusStop
{
    let stopNumber: String
    let stopName: String
    let stopType: String
    let stopLines: [Bus]
    
    init(builder: BusStopBuilder)
    {
        stopNumber = builder.stopNumber
        stopName = builder.stopName
        stopType = builder.stopType
        stopLines = builder.stopLines
    }
}
