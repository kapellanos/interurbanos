//
//  SearchResultsInteractor.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 04/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

class SearchResultsInteractor
{
    weak var output: SearchResultsInteractorOutput?
}

extension SearchResultsInteractor: SearchResultsInteractorInput
{
    func searchStop(stop: String)
    {
        let resource = BusStopAO.all(stopNumber: stop)
        
        Webservice().load(resource: resource) { 
            print($0)
        }
    }
}
