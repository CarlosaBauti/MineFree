//
//  MinePathViewController.swift
//  FirstMapBox
//
//  Created by Carlos Bautista on 3/15/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit
import Mapbox

class MinePathViewController: UIViewController {
    
    @IBOutlet var mapView: MGLMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 40.693364, longitude: -73.985715)
        point.title = "Initial Position"
        point.subtitle = " 2 MetroTech, NY 11210"
        
        mapView.addAnnotation(point)
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        // Always try to show a callout when an annotation is tapped.
        return true
    }
    
    // Note: You can remove this method, which lets you customize low-memory behavior.
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
