//
//  SearchTableViewController.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 23/08/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController
{
    var eventHandler: SearchPresenterInterface?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        eventHandler?.viewLoaded()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}

extension SearchTableViewController: SearchViewInterface
{
    func addSearchController(searchViewController: UISearchController)
    {
        searchViewController.searchBar.delegate = self
        definesPresentationContext = true
        searchViewController.delegate = self
        tableView.tableHeaderView = searchViewController.searchBar
        searchViewController.hidesNavigationBarDuringPresentation = true
        searchViewController.dimsBackgroundDuringPresentation = true
    }
    
    func setupTitle(title: String)
    {
        navigationItem.title = title
    }
}

extension SearchTableViewController: UISearchControllerDelegate
{
    func willPresentSearchController(_ searchController: UISearchController)
    {
        navigationController?.navigationBar.isTranslucent = true
    }
    
    func willDismissSearchController(_ searchController: UISearchController)
    {
        navigationController?.navigationBar.isTranslucent = false
    }
}

extension SearchTableViewController: UISearchBarDelegate
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
        
//        eventHandler?.searchStop(stop: text)
    }
}
