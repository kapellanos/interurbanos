//
//  SequenceType+Utils.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 21/08/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation

extension Sequence
{
    public func faillingFlatMap<T>(transform: (Self.Iterator.Element) throws -> T?) rethrows -> [T]?
    {
        var result: [T] = []
        
        for element in self {
            guard let transformed = try transform(element) else { return nil }
            result.append(transformed)
        }
        return result
    }
}
