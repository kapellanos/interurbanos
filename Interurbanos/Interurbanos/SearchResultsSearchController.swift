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
    var searchBar: UISearchBar?
    
    var eventHandler: SearchResultsPresenter?
}

extension SearchResultsSearchController: SearchResultsViewInterface
{
    
}
