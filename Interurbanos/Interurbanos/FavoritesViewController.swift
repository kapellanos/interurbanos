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
    
    var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        eventHandler?.viewLoaded()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        tableView.constrainEdges(toMarginOf: view)
        
//        view.setNeedsLayout()
//        view.layoutIfNeeded()
    }
    
    override func loadView()
    {
        view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .gray
        
        tableView = UITableView(frame: CGRect.zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableView)
    }
}

extension FavoritesViewController: FavoritesViewInterface
{
    func setupTitle(title: String)
    {
        navigationItem.title = NSLocalizedString("Favoritos", comment: "")
    }
}
