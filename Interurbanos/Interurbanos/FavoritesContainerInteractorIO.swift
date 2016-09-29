//
//  FavoritesContainerInteractorIO.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 28/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

protocol FavoritesContainerInteractorInput
{
    func loadFavorites()
}

protocol FavoritesContainerInteractorOutput: class
{
    func noFavorites()
    func loadedFavorites(favorites: [FavoriteBusStop])
}
