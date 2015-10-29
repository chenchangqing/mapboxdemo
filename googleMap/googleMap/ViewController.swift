//
//  ViewController.swift
//  googleMap
//
//  Created by  green on 15/10/29.
//  Copyright © 2015年 com.fgl. All rights reserved.
//

import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        mapView.delegate = self
        
        // set the map's center coordinate
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: 38.894368,
            longitude: -77.036487),
            zoomLevel: 15, animated: false)
        view.addSubview(mapView)
        
        // Declare the annotation `point` and set its coordinates, title, and subtitle
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 38.894368, longitude: -77.036487)
        point.title = "Hello world!"
        point.subtitle = "Welcome to The Ellipse."
        
        // Add annotation `point` to the map
        mapView.addAnnotation(point)
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
}

