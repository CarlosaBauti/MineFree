//
//  MapOptionsViewController.swift
//  Park View
//
//  Created by Niv Yahel on 2014-11-09.
//  Copyright (c) 2014 Chris Wagner. All rights reserved.
//

import UIKit

enum MapOptionsType: Int {
  case MapBoundary = 0
  case MapOverlay
  case MapPins
  case MapCharacterLocation
  case MapRoute
}

class MapOptionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  var selectedOptions = [MapOptionsType]()
  
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
    return 5
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("OptionCell")
    let mapOptionsType = MapOptionsType(rawValue: indexPath.row)
    switch (mapOptionsType!) {
    case .MapBoundary:
      cell!.textLabel!.text = "The Picnic House"
    case .MapOverlay:
      cell!.textLabel!.text = "Prospect Park Zoo"
    case .MapPins:
      cell!.textLabel!.text = "LeFrak Center at Lakeside"
    case .MapCharacterLocation:
      cell!.textLabel!.text = "Prospect Park Baseball Field 7"
    case .MapRoute:
      cell!.textLabel!.text = "Brooklyn Botanical Garden"
    }
    
    if selectedOptions.contains(mapOptionsType!) {
      cell!.accessoryType = UITableViewCellAccessoryType.Checkmark
    } else {
      cell!.accessoryType = UITableViewCellAccessoryType.None
    }
    
    return cell!
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let cell = tableView.cellForRowAtIndexPath(indexPath)
    let mapOptionsType = MapOptionsType(rawValue: indexPath.row)
    if (cell!.accessoryType == UITableViewCellAccessoryType.Checkmark) {
      cell!.accessoryType = UITableViewCellAccessoryType.None
      // delete object
      selectedOptions = selectedOptions.filter { (currentOption) in currentOption != mapOptionsType}
    } else {
      cell!.accessoryType = UITableViewCellAccessoryType.Checkmark
      selectedOptions += [mapOptionsType!]
    }
    
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
  }
}