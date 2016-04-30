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
    
    // MARK: - Built-In Method Overrides
    
    override func viewDidLoad() {
        
        // Call super implementation of viewDidLoad().
        
        super.viewDidLoad()
        
    }   // end videDidLoad()
    
}   // end DestinationTableViewController: UITableViewController
