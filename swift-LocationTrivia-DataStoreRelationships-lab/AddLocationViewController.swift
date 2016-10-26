//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Arvin San Miguel on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var latitudeField: UITextField!
    @IBOutlet weak var longitudeField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    var store = LocationsDataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameField.accessibilityLabel = "nameField"
        self.nameField.accessibilityIdentifier = "nameField"
        
        self.latitudeField.accessibilityLabel = "latitudeField"
        self.latitudeField.accessibilityIdentifier = "latitudeField"
        
        self.longitudeField.accessibilityLabel = "longitudeField"
        self.longitudeField.accessibilityIdentifier = "longitudeField"
        
        self.saveButton.accessibilityLabel = "saveButton"
        self.saveButton.accessibilityIdentifier = "saveButton"
        
        self.cancelButton.accessibilityLabel = "cancelButton"
        self.cancelButton.accessibilityIdentifier = "cancelButton"
        
    }
    
    @IBAction func cancelButtonTapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submitButtonTapped(_ sender: AnyObject) {
        
        store.locations.append(
            Location(name: nameField.text!, latitude: Float(latitudeField.text!)!, longitude: Float(longitudeField.text!)!)
        )
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
