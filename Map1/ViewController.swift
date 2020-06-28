//
//  ViewController.swift
//  Map1
//
//  Created by Bill Xiang on 6/27/20.
//  Copyright © 2020 billx. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var mapView: MKMapView!
    
    //CVS Pharmacy
    //37°18'59.3"N 122°02'01.6"W
    
    //Rite Aid
    //37°20'13.3"N 122°02'00.5"W
    
    //Walgreens
    //37°18'37.5"N 122°01'25.2"W
    
    //Kaiser Permanente
    //37°20'09.6"N 121°59'56.2"W
    
    //Valley Health Center
    //37.364786, -122.023355
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        let annotation1 = MKPointAnnotation()
            
        annotation1.coordinate = CLLocationCoordinate2D(latitude: 37.31647222222222, longitude: -122.03377777777777)
        annotation1.title = "CVS Pharmacy"
        annotation1.subtitle = "Obtain Mask, etc."
        
        mapView.addAnnotation(annotation1)
        
        let annotation2 = MKPointAnnotation()
            
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 37.335989, longitude: -121.998933)
        annotation2.title = "Kaiser Permanente"
        annotation2.subtitle = "Donate Mask"
        
        mapView.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
            
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 37.337028, longitude: -122.033472)
        annotation3.title = "Rite Aid"
        annotation3.subtitle = "Obtain Mask"
        
        mapView.addAnnotation(annotation3)
        
        let annotation4 = MKPointAnnotation()
            
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 37.310417, longitude: -122.023667)
        annotation4.title = "Walgreens"
        annotation4.subtitle = "Obtain Mask"
        
        mapView.addAnnotation(annotation4)
        
        let annotation5 = MKPointAnnotation()
            
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 37.364786, longitude: -122.023355)
        annotation5.title = "Valley Health Center"
        annotation5.subtitle = "Donate Mask"
        
        mapView.addAnnotation(annotation5)
        
        let region = MKCoordinateRegion(center: annotation1.coordinate, latitudinalMeters: 9000, longitudinalMeters: 9000)

        mapView.setRegion(region, animated: true)
        
    }

}

