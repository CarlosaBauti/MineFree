//
//  ParkMapViewController.swift
//  Park View
//
//  Created by Carlos Bautista Isaza & Robert Hieger on 2016-05-03.
//  Copyright (c) 2016 Carlos Bautista. All rights reserved.
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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let location = CLLocationCoordinate2D(
        latitude: 40.660204,
        longitude: -73.968887)
    let span = MKCoordinateSpanMake(0.025, 0.025)
    let region = MKCoordinateRegion(center: location, span: span)
    mapView.setRegion(region, animated: true)
  }
  
  func loadSelectedOptions() {
    // To be implemented
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let optionsViewController = segue.destinationViewController as! MapOptionsViewController
//    optionsViewController.selectedOptions = selectedOptions
  }
  
  @IBAction func closeOptions(exitSegue: UIStoryboardSegue) {
    let optionsViewController = exitSegue.sourceViewController as! MapOptionsViewController
//    selectedOptions = optionsViewController.selectedOptions
    self.loadSelectedOptions()
  }
  
  @IBAction func mapTypeChanged(sender: AnyObject) {
    // To be implemented
  }
}
