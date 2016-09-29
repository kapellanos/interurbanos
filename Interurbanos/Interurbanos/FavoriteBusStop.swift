//
//  FavoriteBusStop.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 29/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

struct FavoriteBusStop
{
    let busStop: BusStop
    let favoriteName: String
    
    init(busStop: BusStop, favoriteName: String? = nil)
    {
        self.busStop = busStop
        
        if let favoriteName = favoriteName {
            self.favoriteName = favoriteName
        } else {
            self.favoriteName = busStop.stopName
        }
    }
}
