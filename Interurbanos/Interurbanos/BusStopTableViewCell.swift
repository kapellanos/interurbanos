//
//  BusStopTableViewCell.swift
//  Interurbanos
//
//  Created by Miguel Olmedo on 09/09/2016.
//  Copyright © 2016 molmedo. All rights reserved.
//

import UIKit

class BusStopTableViewCell: UITableViewCell
{
    @IBOutlet weak var stopNumber: UILabel! {
        didSet {
            stopNumber.textColor = .greenBus
            stopNumber.font = .defaultFont
        }
    }
    
    @IBOutlet weak var nextBusLineBounds: UILabel! {
        didSet {
            nextBusLineBounds.textColor = 
        }
    }
    
    @IBOutlet weak var nextBusStopTime: UILabel! {
        didSet {
            //            stopNumber.textColor =
        }
    }
}
