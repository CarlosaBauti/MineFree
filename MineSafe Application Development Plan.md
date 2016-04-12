# MineSafe Application Development Plan

## Team: Carlos Bautista Asiza and Robert Hieger

### Project Concept Sketches:

![MineSafe Sketches](photo-assets/app-sketches.jpg "Application Sketches")

### User Stories

| User Story | Description |
|:---------- |:----------- |
| User can choose a destination. | Load map view; add search text field; display user's current location. |
| User can reveal danger zones. | Add slide-up menu; provide button to reveal danger zones. |
| User can specify mode of travel. | Calculate times; define the safest path for each mode (walking, bike, horse); get data from database for display. |
| User can start navigation.  | Determine reference points to display on the next steps according to user's position on map. |

### Required Modules

| Required Module | Purpose |
|:--------------- |:------- |
| **Mapbox Framework** | Provides overall mapping functionality to application. |
| **MinePathViewController.swift** | Controls presentation of opening view to choose destination. |
| **alternateModeViewController.swift** | Controls view for selection of alternate paths. |
| **pathTrackViewController.swift** | Controls view of progress along path. |
| **destinationPath.swift** | Class to interface with SQLite database containing pre-defined paths. |
