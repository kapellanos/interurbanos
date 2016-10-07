//
//  FavoritesContainerPresenter.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 28/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

class FavoritesContainerPresenter
{
    weak var view: FavoritesContainerViewInterface?
    var interactor: FavoritesContainerInteractorInput?
}

extension FavoritesContainerPresenter: FavoritesContainerPresenterInterface
{
    func viewLoaded()
    {
        interactor?.loadFavorites()
    }
}

extension FavoritesContainerPresenter: FavoritesContainerInteractorOutput
{
    func noFavorites()
    {
        view?.showNoFavoritesView()
    }
    
    func loadedFavorites(favorites: [FavoriteBusStop])
    {
        
    }
}
