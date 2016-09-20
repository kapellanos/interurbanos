//
//  SearchResultsPresenter.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 04/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation

class SearchResultsPresenter
{
    weak var view: SearchResultsViewInterface?
    var interactor: SearchResultsInteractorInput?
    var dataSource: SearchResultsDataSource?
    var routing: SearchResultsRoutingProtocol?

    init()
    {
        dataSource = SearchResultsDataSource()
    }
}

extension SearchResultsPresenter: SearchResultsPresenterInterface
{
    func searchStop(stop: String)
    {
        view?.startAnimatingLoading()
        interactor?.searchStop(stop: stop)
    }
}

extension SearchResultsPresenter: SearchResultsInteractorOutput
{
    func stopObtained(busStop: BusStop)
    {
        let busStopVM = [BusStopVM(busStop: busStop)]
        dataSource?.resetResults(results: busStopVM)
    }

    func stopNotExist()
    {
        view?.stopAnimatingLoading()
        routing?.showNoBusStopsFoundsAlert()
    }
}
