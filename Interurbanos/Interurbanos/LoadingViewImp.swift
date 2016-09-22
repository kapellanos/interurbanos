//
//  LoadingViewImp.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 22/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

class LoadingViewImp: UIImageView
{
    let image1 = #imageLiteral(resourceName: "loading1")
    let image2 = #imageLiteral(resourceName: "loading2")
    let image3 = #imageLiteral(resourceName: "loading3")
    let image4 = #imageLiteral(resourceName: "loading4")
    let image5 = #imageLiteral(resourceName: "loading5")
    let image6 = #imageLiteral(resourceName: "loading6")
    
    init()
    {
        super.init(frame: CGRect.zero)
        
        translatesAutoresizingMaskIntoConstraints = false
        animationImages = [image1, image2, image3, image4, image5, image6]
        animationDuration = 0.5
    }
    
    required init?(coder aDecoder: NSCoder) { return nil }
}
