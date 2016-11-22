//
//  SearchResultsFactory.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 04/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

struct SearchResultsFactory
{
    
    func searchResultsController() -> UISearchController
    {
        let searchInternalResultsVC = SearchResultsSearchController(nibName: "SearchResultsSearchController", bundle: nil)
        let searchController = UISearchController(searchResultsController: searchInternalResultsVC)
        
        searchInternalResultsVC.searchBar = searchController.searchBar
        searchController.searchBar.placeholder = NSLocalizedString("Número de la parada", comment: "")
        searchController.searchBar.delegate = searchInternalResultsVC
        
        let presenter = SearchResultsPresenter()
        let interactor = SearchResultsInteractor()
        let routing = SearchResultsRouting()
        
        searchInternalResultsVC.eventHandler = presenter
        routing.presentedViewController = searchInternalResultsVC
        presenter.view = searchInternalResultsVC
        presenter.interactor = interactor
        interactor.output = presenter
        presenter.routing = routing
        
        return searchController
    }
}
