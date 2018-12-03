//
//  FirstViewController.swift
//  RunApp
//
//  Created by Sadi Ashraful on 06/11/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import UIKit
import MapKit

class BeginRunVC: LocationVC {
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationAuthorizationStatus()
        mapView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        manager?.delegate = self
        manager?.startUpdatingLocation()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        manager?.stopUpdatingLocation()
    }

    @IBAction func locationCenterButtonPressed(_ sender: Any) {
        
    }
    
}

extension BeginRunVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus ) {
        if status == .authorizedWhenInUse {
            checkLocationAuthorizationStatus()
            mapView.showsUserLocation = true
            mapView.userTrackingMode = .follow
        }
    }
}
//
//    func locati
//}


