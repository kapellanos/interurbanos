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
    
    var loadingView: LoadingViewImp? = LoadingViewImp()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        eventHandler?.viewLoaded()
    }
}

extension SearchResultsSearchController: SearchResultsViewInterface
{
    func closeKeyboard()
    {
        searchBar?.resignFirstResponder()
    }
    
    func setupDataSource(dataSource: UITableViewDataSource & UITableViewDelegate)
    {
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
    }
    
    func addLoadingView()
    {
        addView()
    }
    
    func startAnimatingLoading()
    {
        loadingView?.startAnimating()
    }
    
    func stopAnimatingLoading()
    {
        loadingView?.stopAnimating()
    }
    
    func reloadData()
    {
        tableView.reloadData()
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

extension SearchResultsSearchController: LoadingView {}
