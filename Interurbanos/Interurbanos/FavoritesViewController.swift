//
//  FavoritesViewController.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 18/08/16.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController
{
    var eventHandler: FavoritesPresenterInterface?
    
    @IBOutlet weak var notResults: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        eventHandler?.viewLoaded()
    }
}

extension FavoritesViewController: FavoritesViewInterface
{
    func setupTitle(title: String)
    {
        navigationItem.title = NSLocalizedString("Favoritos", comment: "")
    }
}
