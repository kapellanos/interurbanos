//
//  SearchResultsSearchController.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 04/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

class SearchResultsSearchController: UIViewController
{
    @IBOutlet var tableView: UITableView!
    
    var searchBar: UISearchBar?
    
    var eventHandler: SearchResultsPresenterInterface?
}

extension SearchResultsSearchController: SearchResultsViewInterface
{
    func showError()
    {
        let alert = UIAlertController(title: NSLocalizedString(key: "Lo sentimo", comment: <#T##String##Swift.String#>), message: <#T##String?##Swift.String?#>, preferredStyle: <#T##UIAlertControllerStyle##UIKit.UIAlertControllerStyle#>)
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
