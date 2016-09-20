//
//  SearchResultsSearchController.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 04/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit
import SwiftSpinner


class SearchResultsSearchController: UIViewController
{
    @IBOutlet var tableView: UITableView!
    
    var searchBar: UISearchBar?
    
    var eventHandler: SearchResultsPresenterInterface?
}

extension SearchResultsSearchController: SearchResultsViewInterface
{
    func startAnimatingLoading()
    {
        SwiftSpinner.show(NSLocalizedString("buscando...", comment: ""))
    }
    
    func stopAnimatingLoading()
    {
        SwiftSpinner.hide()
    }
}

extension SearchResultsSearchController: UISearchBarDelegate
{
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
    {
//        eventHandler?.searchBeginEditing()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
//        showStatus()
//        changeNoResultsText()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
    {
//        eventHandler?.didCancelSearch()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        guard let text = searchBar.text, !text.isEmpty else { return }
        
        eventHandler?.searchStop(stop: text)
    }
}
