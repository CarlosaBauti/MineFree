//
//  MinePathViewController.swift
//  FirstMapBox
//
//  Created by Carlos Bautista on 3/15/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

/**********************************************************
 *                                                        *
 * MinePathViewController Class:                          *
 *                                                        *
 * The MinePathViewController class controls the views    *
 * and any associated subviews with the opening screen    *
 * of the MineSafe application.                           *
 *                                                        *
 * In particular:                                         *
 *                                                        *
 * 1. User tap on the UISearchViewController at the top   *
 *    of first screen automatically invokes the search    *
 *    keyboard allowing user to input a destination.      *
 *                                                        *
 * 2. If user decides to start over in search, a          *
 *    UITapGestureRecognizer invokes an IBAction that     *
 *    dismisses the keyboard.                             *
 *                                                        *
 * 3. When user taps Search button on search keyboard,    *
 *    map view will zoom to starting point coordinates    *
 *    and indicates with map pin the destination point    *
 *    coordinates.                                        *
 *                                                        *
 **********************************************************
*/

import UIKit

import Mapbox           // Third party cocoapod: mapping functionality

class MinePathViewController: UIViewController {
    
    
    // MARK: - @IBOutlets
    
    @IBOutlet var mapView: MGLMapView!              // Map View
    @IBOutlet var destinationText: UISearchBar!     // Search Bar
    
    
    // MARK: - @IBActions
    
    @IBAction func vanishKeyboard(sender: AnyObject) {
    
        // Dismiss the keyboard.
        
        destinationText.resignFirstResponder()
    
    }   // end @IBAction func vanishKeyboard(sender: AnyObject)
    
    
    // MARK: - Built-In Method Overrides
    
    override func viewDidLoad() {
        
        // Call super implementation of viewDidLoad().
        
        super.viewDidLoad()
        
        // Instantiate MGLPointAnnotation() object point.
        
        let point = MGLPointAnnotation()
        
        // Set point's coordinate property with latitude and
        // longitude values.
        
        point.coordinate = CLLocationCoordinate2D(latitude: 40.693364, longitude: -73.985715)
        
        // Set point's title property.
        
        point.title = "Initial Position"
        
        // Set point's subtitle property.
        
        point.subtitle = " 2 MetroTech, NY 11210"
        
        // Add the annotation to the map view.
        
        mapView.addAnnotation(point)
        
    }   // end viewDidLoad()
    
    func mapView(mapView: MGLMapView,
                 annotationCanShowCallout
                 annotation: MGLAnnotation) -> Bool {
        
        // Always try to show a callout when an annotation is tapped.
        
        return true
        
    }   // end mapView(...)
    
    func mapView(mapView: MGLMapView!, didUpdateUserLocation
        userLocation: MGLUserLocation!) {
        mapView.centerCoordinate = userLocation.location!.coordinate
    }
    
    //This function updates the user position using a delegate and identifies the center coordinate based on the user position
    
    
    // MARK: - Methods
    
    
    
}   // end MinPathViewController: UIViewController
