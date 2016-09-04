//
//  FavoritesDataSource.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 04/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

class FavoritesDataSource: NSObject
{
    
}

extension FavoritesDataSource: UITableViewDataSource
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

extension FavoritesDataSource: UITableViewDelegate
{
    
}
