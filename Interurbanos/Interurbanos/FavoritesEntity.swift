//
//  FavoritesEntity.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 29/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import RealmSwift

final internal class FavoritesEntity: Object
{
    dynamic var busStop: BusStopEntity?
    dynamic var favoriteName: String = ""
}
