//
//  CartViewController.swift
//  JJwinks
//
//  Created by Ryan Morrissey on 4/24/18.
//  Copyright © 2018 Morrissey. All rights reserved.
//

import UIKit
import GoogleMaps

class MapsViewController: UIViewController {

   
    @IBOutlet weak var mapView: GMSMapView!
    private let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.settings.myLocationButton = true
        let camera = GMSCameraPosition.camera(withLatitude: 33.770798, longitude: -118.169159, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        // Do any additional setup after loading the view.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 33.682566, longitude: -118.010763)
        marker.title = "JJwinks Headquarters"
        marker.snippet = "Huntington Beach"
        marker.map = mapView
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 33.996706, longitude: -118.273788)
        marker1.title = "JJwinks Factory"
        marker1.snippet = "Los Angeles"
        marker1.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

