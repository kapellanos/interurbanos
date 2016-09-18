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

    init()
    {
        dataSource = SearchResultsDataSource()
    }
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
    func stopObtained(busStop: BusStop)
    {
        let busStopVM = [BusStopVM(busStop: busStop)]
        dataSource?.resetResults(results: busStopVM)
    }

    func stopNotExist()
    {
        view?.showError(NSLocalizedString("Esa parada no existe, ¿seguro que la has escrito bien?", comment: ""))
    }
}
