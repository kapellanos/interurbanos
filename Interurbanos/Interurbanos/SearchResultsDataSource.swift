//
//  SearchResultsDataSource.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 08/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

class SearchResultsDataSource: NSObject
{
}

extension SearchResultsDataSource: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        return UITableViewCell()
    }
}

extension SearchResultsDataSource: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
}
