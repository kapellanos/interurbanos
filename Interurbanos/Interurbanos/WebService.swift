//
//  WebService.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 21/08/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation

final class Webservice
{
    func load<A>(resource: Resource<A>, completion: @escaping (A?) -> ())
    {
        URLSession.shared.dataTask(with: resource.url as URL) { (data, _, _) in
            
            DispatchQueue.main.async {
                let result = data.flatMap(resource.parse)
                completion(result)
            }
            
        }.resume()
    }
}
