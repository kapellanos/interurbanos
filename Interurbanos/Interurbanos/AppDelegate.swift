//
//  AppDelegate.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 18/08/16.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        window = createInitialViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
    
    // MARK: Private
    
    private func createInitialViewController() -> UIWindow
    {
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let favoritesVC = FavoritesFactory().favoritesVC()
        let tabBarController = UITabBarController()
        window.rootViewController = favoritesVC
        
        return window
    }
}

