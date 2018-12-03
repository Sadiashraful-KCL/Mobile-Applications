//
//  LocationVC.swift
//  RunApp
//
//  Created by Sadi Ashraful on 08/11/2018.
//  Copyright © 2018 Sadi Ashraful. All rights reserved.
//

import UIKit
import MapKit

class LocationVC: UIViewController, MKMapViewDelegate {
    
    var manager: CLLocationManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        manager = CLLocationManager()
        manager?.desiredAccuracy = kCLLocationAccuracyBest
        manager?.activityType = .fitness
    }
    
    func checkLocationAuthorizationStatus(){
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse {
            manager?.requestWhenInUseAuthorization()
        }
    }
    



}
