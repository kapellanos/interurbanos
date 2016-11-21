//
//  MainTabBarControllerFactory.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 02/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

struct MainTabBarControllerFactory
{
    func mainTabBarController(viewControllers: [UIViewController]) -> UITabBarController
    {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = viewControllers
        
        tabBarController.tabBar.isTranslucent = false
        
        return tabBarController
    }
}
