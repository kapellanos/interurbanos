//
//  BusEntity.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 29/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import RealmSwift

final class BusEntity: Object
{
    dynamic var number: String = ""
    dynamic var waitTime: String = ""
    dynamic var source: String = ""
    dynamic var lineBound: String = ""
    dynamic var isNightLine: Bool = false
}
