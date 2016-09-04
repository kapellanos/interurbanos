//
//  FavoritesPresenter.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 18/08/16.
//  Copyright © 2016 molmedo. All rights reserved.
//

import Foundation

final internal class FavoritesPresenter
{
    weak var view: FavoritesViewInterface?
    var interactor: FavoritesInteractorInput?
    var routing: FavoritesRoutingProtocol?
}

extension FavoritesPresenter: FavoritesPresenterInterface
{
    func viewLoaded()
    {
        view?.setupTitle(title: NSLocalizedString("Favoritos", comment: ""))
    }
}

extension FavoritesPresenter: FavoritesInteractorOutput
{
}
