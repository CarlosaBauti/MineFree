//
//  MapOptionsViewController.swift
//  Park View
//
//  Created by Carlos Bautista Isaza & Robert Hieger on 2016-05-03.
//  Copyright (c) 2014 Chris Wagner. All rights reserved.
//

import UIKit

//enum destinationType: Int {
//  case PicnicHouse = 0
//  case ProspectZoo
//  case BotanicalGarden
//  case MapCharacterLocation
//  case MapRoute
//}

class MapOptionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Properties
    
    var destinations = [
        "The Picnic House",
        "Prospect Park Zoo",
        "LeFrak Center at Lakeside",
        "Prospect Park Baseball Field 7",
        "Brooklyn Botanical Garden",
        "Lincoln Road Playground",
        "Prospect Park Boathouse",
        "Long Meadow Ballfields",
        "Prospect Park Dog Beach",
        "Quaker Cemetery"
    ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("destinationCell")
    
    for _ in destinations   {
        
        cell!.textLabel!.text = destinations[indexPath.row]
        
    }   // end for
    
        return cell!
    
    } // end tableView(_:cellForRowAtIndexPath)
  
}