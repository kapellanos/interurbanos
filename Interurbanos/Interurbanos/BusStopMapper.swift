//
//  BusStopMapper.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 09/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

struct BusStopMapper
{
    func transform(from busStopAO: BusStopAO) -> BusStop
    {
        return BusStopBuilder.builder().stopNumber(busStopAO.stopNumber).stopName(busStopAO.stopName).stopType(busStopAO.stopType).stopLines(busStopAO.stopLines.map(BusMapper().transform)).build()
    }
    
    func transform(from entity: BusStopEntity) -> BusStop
    {
        let stopLines = Array(entity.stopLines.map(BusMapper().transform))
        return BusStopBuilder.builder().stopNumber(entity.stopNumber).stopName(entity.stopName).stopType(entity.stopType).stopLines(stopLines).build()
    }
}
