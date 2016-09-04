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
    
    var searchController: UISearchController?
    
    
}

extension SearchTableViewController: SearchViewInterface
{
    func addSearchController(searchViewController: UISearchController)
    {
        searchController = searchViewController
        searchViewController.delegate = self
        tableView.tableHeaderView = searchController?.searchBar
    }
}

extension SearchTableViewController: UISearchControllerDelegate
{
    
}
