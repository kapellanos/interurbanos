//
//  SearchResultsPresenter.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 04/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

class SearchResultsPresenter
{
    weak var view: SearchResultsViewInterface?
    var interactor: SearchResultsInteractorInput?
}

extension SearchResultsPresenter: SearchResultsPresenterInterface
{
    func searchStop(stop: String)
    {
        interactor?.searchStop(stop: stop)
    }
}

extension SearchResultsPresenter: SearchResultsInteractorOutput
{
    func stopObtained(busStop: BusStopAO)
    {
        
    }
}
