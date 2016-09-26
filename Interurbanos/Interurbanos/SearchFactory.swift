//
//  SearchFactory.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 02/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

struct SearchFactory
{
    var tabBarItem: UITabBarItem {
        return UITabBarItem(title: NSLocalizedString("Búsqueda", comment: ""), image: nil, selectedImage: nil)
    }
    
    func searchVC() -> UIViewController
    {
        let searchVC = SearchTableViewController()
        
        let presenter = SearchPresenter()
        let interactor = SearchInteractor()
        let routing = SearchRouting()
        
        searchVC.eventHandler = presenter
        presenter.view = searchVC
        presenter.interactor = interactor
        presenter.routing = routing
        interactor.presenter = presenter
        routing.viewController = searchVC
        
        let navigationViewController = UINavigationController(rootViewController: searchVC)
        navigationViewController.tabBarItem = tabBarItem
        navigationViewController.navigationBar.isTranslucent = false
        
        return navigationViewController
    }
}
