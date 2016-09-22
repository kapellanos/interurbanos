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
    func viewLoaded()
    {
        guard let dataSource = dataSource else { return }
        
        view?.setupDataSource(dataSource: dataSource)
        
        view?.addLoadingView()
    }
    
    func searchStop(stop: String)
    {
        view?.closeKeyboard()
        view?.startAnimatingLoading()
        interactor?.searchStop(stop: stop)
    }
}

extension SearchResultsPresenter: SearchResultsInteractorOutput
{
    func stopObtained(busStop: BusStop)
    {
        view?.stopAnimatingLoading()
        
        let busStopVM = [BusStopVM(busStop: busStop)]
        dataSource?.resetResults(results: busStopVM)
        
        view?.reloadData()
    }

    func stopNotExist()
    {
        view?.stopAnimatingLoading()
        routing?.showNoBusStopsFoundsAlert()
    }
}
