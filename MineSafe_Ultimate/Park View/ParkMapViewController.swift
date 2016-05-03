//
//  ParkMapViewController.swift
//  Park View
//
//  Created by Niv Yahel on 2014-11-09.
//  Copyright (c) 2014 Chris Wagner. All rights reserved.
//

import UIKit
import MapKit

enum MapType: Int {
  case Standard = 0
  case Hybrid
  case Satellite
}

class ParkMapViewController: UIViewController {
  
  @IBOutlet weak var mapTypeSegmentedControl: UISegmentedControl!
  
    @IBOutlet var mapView: MKMapView!
  var selectedOptions = [MapOptionsType]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let location = CLLocationCoordinate2D(
        latitude: 40.660204,
        longitude: -73.968956
    )
    let span = MKCoordinateSpanMake(0.03, 0.03)
    let region = MKCoordinateRegion(center: location, span: span)
    mapView.setRegion(region, animated: true)
  }
  
  func loadSelectedOptions() {
    // To be implemented
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let optionsViewController = segue.destinationViewController as! MapOptionsViewController
    optionsViewController.selectedOptions = selectedOptions
  }
  
  @IBAction func closeOptions(exitSegue: UIStoryboardSegue) {
    let optionsViewController = exitSegue.sourceViewController as! MapOptionsViewController
    selectedOptions = optionsViewController.selectedOptions
    self.loadSelectedOptions()
  }
  
  @IBAction func mapTypeChanged(sender: AnyObject) {
    // To be implemented
  }
}
