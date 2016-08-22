//
//  LoadingViewController.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 22/08/16.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

final internal class LoadingViewController: UIViewController
{
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    
    init<A>(resource: Resource<A>, build: @escaping (A) -> UIViewController)
    {
        super.init(nibName: nil, bundle: nil)
        
        spinner.startAnimating()
        Webservice().load(resource: resource) { [weak self] result in
            self?.spinner.stopAnimating()
            guard let value = result else { return }
            let viewController = build(value)
            self?.add(content: viewController)
        }
    }
    
    required init?(coder aDecoder: NSCoder) { return nil }
    
    func add(content: UIViewController) {
        addChildViewController(content)
        view.addSubview(content.view)
        content.view.translatesAutoresizingMaskIntoConstraints = false
//        content.view.constrainEdges(toMarginOf: view)
//        content.didMoveToParentViewController(self)
    }
}
