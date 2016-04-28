//
//  DestinationTableViewController.swift
//  MineSafe
//
//  Created by Robert Hieger on 4/26/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

/*************************************************************
 *                                                           *
 * DestinationTableViewController Class:                     *
 *                                                           *
 * DestinationTableViewController is the application entry   *
 * point and displays a search bar with a table view that    *
 * allows the user to input her choice of destination to     *
 * which she wishes safe guidance.                           *
 *                                                           *
 * The associated data source for this controller is the     *
 * Destination class that defines an array of dictionaries   *
 * with pre-determined destinations.                         *
 *                                                           *
 * Upon selection of resulting table cells, the view         *
 * segues to a map view with a pin dropped on the chosen     *
 * destination and the detected starting point.              *
 *                                                           *
 *************************************************************
*/

class DestinationTableViewController: UITableViewController {
    
    
    // MARK: - Properties
    
    var destination: Destination!
    
    
    // MARK: - IBOutlets
    
    @IBOutlet var destinationTableView: UITableView!
    
}   // end DestinationTableViewController
