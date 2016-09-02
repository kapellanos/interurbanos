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
        constrainEqual(.top, to: view, .topMargin)
        constrainEqual(.leading, to: view, .leadingMargin)
        constrainEqual(.trailing, to: view, .trailingMargin)
        constrainEqual(.bottom, to: view, .bottomMargin)
    }
    
    public func center(inView view: UIView)
    {
//        centerXAnchor.constrainEadasdasqual(anchor: view.centerXAnchor)
//        centerYAnchor.constrainEadasdasqual(anchor: view.centerYAnchor)
    }
}

extension NSLayoutAnchor
{
//    public func constrainEadasdasqual(anchor: NSLayoutAnchor, constant: CGFloat = 0) {
//        let theconstraint = constraint(equalTo: anchor, constant: constant)
//        theconstraint.isActive = true
////        newConstraint.isActive = true
//    }
}

public func mainQueue(block: @escaping () -> ())
{
    DispatchQueue.main.async(execute: block)
}
