//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Aiello, Anthony M (aiell016) on 3/12/19.
//  Copyright © 2019 Tony Aiello. All rights reserved.
//

import Foundation
import UIKit


class MapViewControler : UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view")
    
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        print("ConversionViewController loaded its view.")
//        updateCelsiusLabel()
//    }
    
    
    override func viewWillAppear(_ animatedx: Bool) {
        print("MapViewController is about to appear.")
    }
    
    
}
