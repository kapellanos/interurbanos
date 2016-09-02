//
//  App.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 23/08/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

struct App
{
    init(window: UIWindow)
    {
        let favoritesVC = FavoritesFactory().favoritesVC()
        
        let searchVC = SearchFactory().searchVC()
        
        let tabBarController = MainTabBarControllerFactory().mainTabBarController(viewControllers: [favoritesVC, searchVC])
        
        window.rootViewController = tabBarController
        
        window.makeKeyAndVisible()
    }
}
