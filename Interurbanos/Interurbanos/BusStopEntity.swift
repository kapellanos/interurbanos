//
//  BusStopEntity.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 29/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import RealmSwift

final internal class BusStopEntity: Object
{
    dynamic var stopNumber: String = ""
    dynamic var stopName: String = ""
    dynamic var stopType: String = ""
    let stopLines = List<BusEntity>()
}
