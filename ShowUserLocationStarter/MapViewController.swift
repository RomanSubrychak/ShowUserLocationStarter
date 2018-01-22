//
//  MapViewController.swift
//  ShowUserLocationStarter
//
//  Created by Roman Subrychak on 1/19/18.
//  Copyright © 2018 Roman Subrychak. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
	
	var mapView: MKMapView!
	var locationButton: UIButton!
	
	override func loadView() {
		super.loadView()
		
		// Instantiate mapView
		mapView = MKMapView()
		
		// Assign mapView to view property of MapViewController
		view = mapView
		
		// Instantiate locationButton
		locationButton = UIButton(type: .system)
		
		// Set title property of locationButton to "location"
		locationButton.setTitle("location", for: .normal)
		
		// Set locationButtton background to white
		locationButton.backgroundColor = .white
		
		// Add locationButton to view
		view.addSubview(locationButton)
		
		locationButton.translatesAutoresizingMaskIntoConstraints = false
		
		// Create width constraint to set locationButton's
		// width to be equal to 60.
		let locationButtonWidthConstraint = locationButton.widthAnchor.constraint(equalToConstant: 60)
		
		// Create height constraint to set locationButton's
		// height to be equal to 30.
		let locationButtonHeightConstraint = locationButton.heightAnchor.constraint(equalToConstant: 30)
		
		//Create CenterX constraint to position locationButton
		// horizontally in the screen
		let locationButtonCenterXConstraint = locationButton.centerXAnchor
			.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
		
		// Create a bottom consraint to position
		//locationButton at the bottom of the screen
		let locationButtonBottomConstraint = NSLayoutConstraint(
			item: view,
			attribute: .bottomMargin,
			relatedBy: .equal,
			toItem: locationButton,
			attribute: .bottomMargin,
			multiplier: 1,
			constant: 20
		)
		
		
		// Activate constraints
		locationButtonWidthConstraint.isActive = true
		locationButtonHeightConstraint.isActive = true
		locationButtonCenterXConstraint.isActive = true
		locationButtonBottomConstraint.isActive = true
		
		// Add target to locationButton
		locationButton.addTarget(self, action:
			#selector(MapViewController.locationButtonTapped(_:)),
								 for: .touchUpInside)
	}
	
	// Method which gets called each time button tapped
	@objc func locationButtonTapped(_ sender: UIButton) {
		print("location button tapped :)")
	}
}
