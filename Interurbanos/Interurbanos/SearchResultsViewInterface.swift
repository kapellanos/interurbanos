//
//  SearchResultsViewInterface.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 04/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

protocol SearchResultsViewInterface: class
{
    func closeKeyboard()
    func setupDataSource(dataSource: UITableViewDataSource & UITableViewDelegate)
    func addLoadingView()
    func startAnimatingLoading()
    func stopAnimatingLoading()
    func reloadData()
}
