//
//  DestinationTableViewController.swift
//  MineSafe
//
//  Created by Robert Hieger on 4/30/16.
//  Copyright © 2016 Carlos Bautista Designs. All rights reserved.
//

import UIKit

/******************************************************************
 *                                                                *
 * DestinationTableViewController                                 *
 *                                                                *
 * This view controller is a sub-class of UITableViewController   *
 * and controls all views associated with the TableViewController *
 * that serves as the entry point for the application.            *
 *                                                                *
 ******************************************************************
*/

class DestinationTableViewControler: UITableViewController {
    
    
    // MARK: - IBOutlets
    
    @IBOutlet var destinationTableView: UITableView!
    
    // MARK: - Properties
    
    // Instnatiate destinationName Array.
    
    let allDestinations = Destination()
    
    var destinationNames = [
        "The Picnic House",
        "Prospect Park Zoo",
        "LeFrak Center at Lakeside",
        "Prospect Park Baseball Field 7",
        "Brooklyn Botanic Garden",
        "Lincoln Road Playground",
        "Prospect Park Boathouse",
        "Long Meadow Ballfields",
        "Prospect Park Dog Beach",
        "Quaker Cemetery"
    ]
    
    
    // MARK: - Built-In Method Overrides
    
    // FULL DISCOLOSURE: The code used within these ovrrides to pull
    //                   the data in for use with this table view is
    //                   loosely adapted from the tutorial at the
    //                   following URL:
    //
    // https://www.ralfebert.de/tutorials/ios-swift-uitableviewcontroller/
    
    
    override func viewDidLoad() {
        
        // Call super implementation of viewDidLoad().
        
        super.viewDidLoad()
        
    }   // end videDidLoad()
    
    override func tableView(tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        
        return allDestinations.safeDestination.count
        
        
    }   // end tableView(_:numberOfRowsInSection)
    
    override func tableView(tableView: UITableView,
              titleForHeaderInSection section: Int)  -> String? {
     
        return "choose your destination:"
        
    }   // tableView(_:numberOfRowInSection)
    
    override func tableView(tableView: UITableView,
    cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Set cell reuse identifier.
        
        let destCell =
        tableView.dequeueReusableCellWithIdentifier("destinationCell")
        
        // Configure table cell.
        
        destCell?.textLabel?.text = destinationNames[indexPath.row]
            
        return destCell!
        
    }   // end tableView(_:cellForRowAtIndexPath)
    
}   // end DestinationTableViewController: UITableViewController
