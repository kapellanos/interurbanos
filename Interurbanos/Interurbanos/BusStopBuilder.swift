//
//  BusStopBuilder.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 12/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

class BusStopBuilder
{
    private init() { }
    
    private(set) var stopNumber: String = ""
    private(set) var stopName: String = ""
    private(set) var stopType: String = ""
    private(set) var stopLines: [Bus] = []
    
    static func builder() -> BusStopBuilder
    {
        return BusStopBuilder()
    }
    
    func stopNumber(_ stopNumber: String) -> BusStopBuilder
    {
        self.stopNumber = stopNumber
        return self
    }
    
    func stopName(_ stopName: String) -> BusStopBuilder
    {
        self.stopName = stopName
        return self
    }
    
    func stopType(_ stopType: String) -> BusStopBuilder
    {
        self.stopType = stopType
        return self
    }
    
    func stopLines(_ stopLines: [Bus]) -> BusStopBuilder
    {
        self.stopLines = stopLines
        return self
    }
    
    func build() -> BusStop
    {
        return BusStop(builder: self)
    }
}
