//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Aiello, Anthony M (aiell016) on 3/12/19.
//  Copyright © 2019 Tony Aiello. All rights reserved.
//

import Foundation
import UIKit
import MapKit


class MapViewControler : UIViewController {

    var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view")
    
    }
    
    override func loadView() {
        // create a map view
        mapView = MKMapView ()
        // set it as the main view
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor)
//        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
//        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        func mapTypeChanged(_ segControl: UISegmentedControl) {
            switch segmentedControl.selectedSegmentIndex {
                
            case 0:
                mapView.mapType = .standard
            case 1:
                mapView.mapType = .hybrid
            case 2:
                mapView.mapType = .satellite
            default:
                break
            }
        }
        
        segmentedControl.addTarget(self, action: #selector(MapViewControler.mapTypeChanged(_:) for: .valueChanged)
        
        
        
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        
    }
    

    
    
    override func viewWillAppear(_ animatedx: Bool) {
        print("MapViewController is about to appear.")
    }
    
    
}
