//
//  FavoritesContainerInteractor.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 29/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

class FavoritesContainerInteractor
{
    weak var output: FavoritesContainerInteractorOutput?
}

extension FavoritesContainerInteractor: FavoritesContainerInteractorInput
{
    func loadFavorites()
    {
        let favoritesDAO = FavoritesDAO()
        
        do {
            let allFavorites = try favoritesDAO.all()
            
            if allFavorites.isEmpty {
                output?.noFavorites()
            } else {
                output?.loadedFavorites(favorites: allFavorites.map(FavoriteBusStopMapper().transform))
            }
        } catch {
            
        }
    }
}
