//
//  Constraints+Utils.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 22/08/16.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

extension UIView
{
    public func constrainEqual(attribute: NSLayoutAttribute, to: AnyObject, multiplier: CGFloat = 1, constant: CGFloat = 0) {
        constrainEqual(attribute, to: to, attribute, multiplier: multiplier, constant: constant)
    }
    
    public func constrainEqual(_ attribute: NSLayoutAttribute, to: AnyObject, _ toAttribute: NSLayoutAttribute, multiplier: CGFloat = 1, constant: CGFloat = 0)
    {
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal, toItem: to, attribute: toAttribute, multiplier: multiplier, constant: constant)
            ]
        )
    }
    
    public func constrainEdges(toMarginOf view: UIView)
    {
        constrainEqual(.top, to: view, .top)
        constrainEqual(.leading, to: view, .leading)
        constrainEqual(.trailing, to: view, .trailing)
        constrainEqual(.bottom, to: view, .bottom)
    }
    
    public func center(inView view: UIView)
    {
        centerXAnchor.centerInAnchor(anchor: view.centerXAnchor)
        centerYAnchor.centerInAnchor(anchor: view.centerYAnchor)
    }
}

extension NSLayoutXAxisAnchor
{
    public func centerInAnchor(anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, constant: CGFloat = 0) {
        let theconstraint = constraint(equalTo: anchor, constant: constant)
        theconstraint.isActive = true
    }
}


extension NSLayoutYAxisAnchor
{
    public func centerInAnchor(anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, constant: CGFloat = 0) {
        let theconstraint = constraint(equalTo: anchor, constant: constant)
        theconstraint.isActive = true
    }
}


public func mainQueue(block: @escaping () -> ())
{
    DispatchQueue.main.async(execute: block)
}
