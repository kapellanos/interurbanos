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
//        let searchInternalResultsVC = mainStoryboard.instantiateViewController(withIdentifier: searchVCIdentifier) as! SearchResultsSearchController
        let searchController = UISearchController(searchResultsController: nil)
        
        
        searchController.searchBar.placeholder = NSLocalizedString("Número de la parada", comment: "")        
        searchController.dimsBackgroundDuringPresentation = false
        
        let presenter = SearchResultsPresenter()
        let interactor = SearchResultsInteractor()
        let routing = SearchResultsRouting()
        
//        searchInternalResultsVC.eventHandler = presenter
//        routing.presentedViewController = searchInternalResultsVC
//        presenter.view = searchInternalResultsVC
//        presenter.interactor = interactor
//        interactor.output = presenter
//        presenter.routing = routing
        
        return searchController
    }
}
