//
// Created by Miguel Olmedo on 20/09/2016.
// Copyright (c) 2016 molmedo. All rights reserved.
//

import UIKit

class SearchResultsRouting
{
    var presentedViewController: UIViewController?
}

extension SearchResultsRouting: SearchResultsRoutingProtocol
{
    func showNoBusStopsFoundsAlert()
    {
        let alert = UIAlertController(title: NSLocalizedString("No hay coincidencias", comment: ""), message: NSLocalizedString("Lo sentimos, no encontramos ninguna parada con esos datos", comment: ""), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("ok", comment: ""), style: .default, handler: nil))

        presentedViewController?.present(alert, animated: true, completion: nil)
    }
}
