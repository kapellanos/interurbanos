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
        var cell = tableView.dequeueReusableCell(withIdentifier: "BusStopTableViewCell") as? BusStopTableViewCell

        if cell == nil {
            cell = Bundle.main.loadNibNamed("BusStopTableViewCell", owner: nil)?.first as? BusStopTableViewCell
        }

        cell!.viewModel = results[indexPath.row]

        return cell!
    }
}

extension SearchResultsDataSource: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 44.0
    }
}
