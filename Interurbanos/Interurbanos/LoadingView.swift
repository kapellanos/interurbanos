//
//  LoadingView.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 22/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

protocol LoadingView
{
    var loadingView: LoadingViewImp? { get }
}

extension LoadingView where Self: UIViewController
{
    func addView()
    {
        guard let loadingView = loadingView else {
            fatalError("Loading view is nil")
        }
        
        view.addSubview(loadingView)
        
        loadingView.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        loadingView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        
        loadingView.center(inView: view)
    }
    
    func showLoading()
    {
        
    }
    
    func hideLoading()
    {
        
    }
}
