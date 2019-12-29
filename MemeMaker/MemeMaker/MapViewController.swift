//
//  ViewController.swift
//  MemeMaker
//
//  Created by cheng chao on 2019/12/29.
//  Copyright © 2019 BAIDU. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView:MKMapView!
    
    override func loadView() {
        super.loadView()
        print("MapViewController  loadView()")
        mapView = MKMapView()
        view = mapView
        
        let segementControl = UISegmentedControl(items: ["Standard","Hybrid","Satellite"])
        segementControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segementControl.selectedSegmentIndex = 0
        segementControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segementControl)
            
        let top = segementControl.topAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.topAnchor, constant: 20)
        
        let margins = view.layoutMarginsGuide
        
        let left = segementControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
         let right = segementControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        top.isActive = true
        left.isActive = true
        right.isActive = true
        

        segementControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController viewDidLoad()")
    }
    @objc func mapTypeChanged(_ segControl:UISegmentedControl) -> Void {
        switch segControl.selectedSegmentIndex {
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
    
}

