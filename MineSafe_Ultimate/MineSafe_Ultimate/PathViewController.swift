//
//  PathViewController.swift
//  MineSafe_Ultimate
//
//  Created by Carlos Bautista on 5/2/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit
import MapKit

class PathViewController: UIViewController {
    
    @IBOutlet var selectDestination: UINavigationBar!
    
    @IBOutlet var mapView: MKMapView!
    
    
    var selectedOptions = [MapOptionsType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
// MARK: - Map View delegate

extension PathViewController: MKMapViewDelegate {
}

