//
//  DestinationItem.swift
//  MineSafe
//
//  Created by Robert Hieger on 4/28/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

/*****************************************************
 *                                                   *
 * DestinationItem Class:                            *
 *                                                   *
 * This class defines the data that will be fed to   *
 * the table cells in DestinationViewController. The *
 * structure for this data is defined in the         *
 * Destination Class that contains an array of       *
 * Dictionaries with Key-Value pairs of:             *
 *                                                   *
 *      name: String                                 *
 *  latitude: Double                                 *
 * longitude: Double                                 *
 *                                                   *
 *****************************************************
*/

class DestinationItem: NSObject   {
    
    // MARK: - Properties
    
    var destTitle: String = "Prospect Park"
    var destName: String
    
    
    // MARK: - Designated Initializer
    
    init(destName: String)  {
        
        self.destName = destName
        
        // Call super implementation of init().
        
        super.init()
        
    }   // end init(destName: String)
    
}   // end DestinationItem
