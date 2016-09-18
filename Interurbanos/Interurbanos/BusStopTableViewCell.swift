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
            nextBusLineBounds.textColor = .colorGrayBlack
            nextBusLineBounds.font = .defaultFont
        }
    }
    
    @IBOutlet weak var nextBusStopTime: UILabel! {
        didSet {
            nextBusStopTime.textColor = .colorGray
            nextBusStopTime.font = .defaultFont
        }
    }

    var viewModel: BusStopVM? {
        didSet {
            guard let viewModel = viewModel else { return }
            stopNumber.text = viewModel.leftLabel
        }
    }
}
