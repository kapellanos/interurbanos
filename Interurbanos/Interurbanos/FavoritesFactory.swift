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
    private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    private let favoritesVCIdentifier = "FavoritesViewController"
    
    var tabBarItem: UITabBarItem {
        return UITabBarItem(title: NSLocalizedString("Favoritos", comment: ""), image: nil, selectedImage: nil)
    }
    
    func favoritesVC() -> UIViewController
    {
        let favoritesVC = mainStoryboard.instantiateViewController(withIdentifier: favoritesVCIdentifier) as!FavoritesViewController
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
        
        return favoritesVC
    }
}
