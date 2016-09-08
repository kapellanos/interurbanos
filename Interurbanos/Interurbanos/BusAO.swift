//
//  BusAO.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 18/08/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation
import JASON

struct BusAO
{
    let number: String
    let waitTime: String
    let source: String
    let lineBound: String
    let isNightLine: Bool
    
}

extension BusAO
{
    init?(json: JSON)
    {
        guard let number = json["lineNumber"].string, let waitTime = json["waitTime"].string, let source = json["source"].string, let lineBound = json["lineBound"].string, let isNightLine = json["isNightLine"].bool else { return nil }
        
        self.number = number
        self.waitTime = waitTime
        self.source = source
        self.lineBound = lineBound
        self.isNightLine = isNightLine
    }
}
