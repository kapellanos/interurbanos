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
    private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    private let mainTabBarIdentifier = "MainTabBarController"
    
    func mainTabBarController(viewControllers: [UIViewController]) -> UITabBarController
    {
        let tabBarController = mainStoryboard.instantiateViewController(withIdentifier: mainTabBarIdentifier) as! UITabBarController
        tabBarController.viewControllers = viewControllers
        
        return tabBarController
    }
}
