//
//  SearchPresenter.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 01/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation

class SearchPresenter
{
    weak var view: SearchViewInterface?
    var interactor: SearchInteractorInput?
    var routing: SearchRoutingInterface?
    
    // MARK: - Private
    
    fileprivate func addSearchController()
    {
        let searchController = SearchResultsFactory().searchResultsController()
        view?.addSearchController(searchViewController: searchController)
    }
}

extension SearchPresenter: SearchPresenterInterface
{
    func viewLoaded()
    {
        addSearchController()
        
        view?.setupTitle(title: NSLocalizedString("Paradas", comment: ""))
    }
}

extension SearchPresenter: SearchInteractorOutput
{
    
}
