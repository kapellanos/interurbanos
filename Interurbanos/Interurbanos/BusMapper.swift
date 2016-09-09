//
//  BusMapper.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 09/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

struct BusMapper
{
    func transform(fromBusAO busAO: BusAO) -> Bus
    {
        return Bus(number: busAO.number, waitTime: busAO.waitTime, source: busAO.source, lineBound: busAO.lineBound, isNightLine: busAO.isNightLine)
    }
}
