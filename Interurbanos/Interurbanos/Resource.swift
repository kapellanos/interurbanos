//
//  Resource.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 18/08/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String: AnyObject]

struct Resource<A> {
    let url: URL
    let parse: (Data) -> A?
}

extension Resource
{
    init(url: URL, parseJSON: @escaping (Any) -> A?)
    {
        self.url = url
        parse = { data in
            let json = try? JSONSerialization.jsonObject(with: data, options: [])
            return json.flatMap(parseJSON)
        }
    }
}
