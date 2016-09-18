//
//  BusStopMapper.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 09/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

struct BusStopMapper
{
    func transform(fromBusStopAO busStopAO: BusStopAO) -> BusStop
    {
        return BusStopBuilder.builder().stopNumber(busStopAO.stopNumber).stopName(busStopAO.stopName).stopType(busStopAO.stopType).stopLines(busStopAO.stopLines.map(BusMapper().transform)).build()
    }
}
