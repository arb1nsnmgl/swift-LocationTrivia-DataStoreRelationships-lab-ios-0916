//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Arvin San Miguel on 10/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddTriviaViewController: UIViewController {
    
    
    var location : Location!
    var store = LocationsDataStore.sharedInstance
    
    @IBOutlet weak var triviumTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.triviumTextField.accessibilityLabel = "Trivium Text Field"
        self.triviumTextField.accessibilityIdentifier = "Trivium Text Field"
        
        self.saveButton.accessibilityLabel = "Save Button"
        self.saveButton.accessibilityIdentifier = "Save Button"
        
        self.cancelButton.accessibilityLabel = "Cancel Button"
        self.cancelButton.accessibilityIdentifier = "Cancel Button"
        
    }

    
    @IBAction func cancelButtonTapped(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonTapped(_ sender: AnyObject) {
        
        location.trivia.append(
            Trivium(content: triviumTextField.text!, likes: 0)
        )
        dismiss(animated: true, completion: nil)
    }
    
    
 
}
