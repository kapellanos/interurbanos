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
    fileprivate var results = [BusStopVM]()
    fileprivate let cellIdentifier = "BusStopTableViewCell"

    // MARK: - Public

    func resetResults(results: [BusStopVM])
    {
        self.results = results
    }
}

extension SearchResultsDataSource: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? BusStopTableViewCell else { return UITableViewCell() }

        cell.viewModel = results[indexPath.row]

        return cell
    }
}

extension SearchResultsDataSource: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
}
