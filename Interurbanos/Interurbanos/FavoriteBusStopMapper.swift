//
//  FavoriteBusStopMapper.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 29/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

struct FavoriteBusStopMapper
{
    func transform(from entity: FavoritesEntity) -> FavoriteBusStop
    {
        let busStop = BusStopMapper().transform(from: entity.busStop)
        return FavoriteBusStop(busStop: busStop, favoriteName: entity.favoriteName)        
    }
}
