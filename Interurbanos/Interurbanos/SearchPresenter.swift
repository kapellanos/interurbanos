//
//  SearchPresenter.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 01/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

class SearchPresenter
{
    weak var view: SearchViewInterface?
    var interactor: SearchInteractorInput?
    var routing: SearchRoutingInterface?
}

extension SearchPresenter: SearchPresenterInterface
{
    
}

extension SearchPresenter: SearchInteractorOutput
{
    
}
