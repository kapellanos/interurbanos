//
//  FavoritesFactory.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 18/08/16.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

internal struct FavoritesFactory
{
    var tabBarItem: UITabBarItem {
        return UITabBarItem(title: NSLocalizedString("Favoritos", comment: ""), image: nil, selectedImage: nil)
    }
    
    func favoritesVC() -> UIViewController
    {
        let favoritesVC = FavoritesViewController(nibName: "FavoritesViewController", bundle: nil)
        favoritesVC.tabBarItem = tabBarItem
        
        let presenter = FavoritesPresenter()
        let interactor = FavoritesInteractor()
        let routing = FavoritesRouting()
        
        favoritesVC.eventHandler = presenter
        presenter.view = favoritesVC
        presenter.interactor = interactor
        presenter.routing = routing
        interactor.presenter = presenter
        routing.viewController = favoritesVC
        
        let navigationViewController = UINavigationController(rootViewController: favoritesVC)
        navigationViewController.tabBarItem = tabBarItem
        
        return navigationViewController
    }
}
