//
//  FavoritesContainerViewController.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 28/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

class FavoritesContainerViewController: UIViewController
{
    var eventHandler: FavoritesContainerPresenterInterface?
    
    override func viewDidLoad()
    {
        eventHandler?.viewLoaded()
    }
}

extension FavoritesContainerViewController: FavoritesContainerViewInterface
{
    
}
