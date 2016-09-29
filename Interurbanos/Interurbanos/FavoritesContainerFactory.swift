//
//  FavoritesContainerFactory.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 28/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

struct FavoritesContainerFactory
{
    func favoritesContainer() -> UIViewController
    {
        let viewController = FavoritesContainerViewController(nibName: "FavoritesContainerViewController", bundle: nil)
        
        let presenter = FavoritesContainerPresenter()
        let interactor = FavoritesContainerInteractor()
        
        viewController.eventHandler = presenter
        presenter.view = viewController
        presenter.interactor = interactor
        interactor.output = presenter
        
        return viewController
    }
}
