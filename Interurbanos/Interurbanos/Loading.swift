//
//  Loading.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 22/08/16.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

internal protocol Loading
{
	associatedtype ResourceType
    var spinner: UIActivityIndicatorView { get }
    
    func configure(value: ResourceType)
}

extension Loading where Self: UIViewController
{
    func load(resource: Resource<ResourceType>)
    {
        spinner.startAnimating()
        Webservice().load(resource) { [weak self] result in
            self?.spinner.stopAnimating()
            guard let value = result.value else { return }
            self?.configure(value)
        }
    }
}
