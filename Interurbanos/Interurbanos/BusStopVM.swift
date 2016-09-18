//
//  BusStopVM.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 08/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

struct BusStopVM
{
    private let busStop: BusStop

    init(busStop: BusStop)
    {
        self.busStop = busStop
    }

    var leftLabel: String {
        return busStop.stopNumber
    }
}
