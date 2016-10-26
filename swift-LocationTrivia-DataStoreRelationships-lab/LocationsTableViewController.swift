//
//  LocationsTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Arvin San Miguel on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class LocationsTableViewController: UITableViewController {

    var store = LocationsDataStore.sharedInstance
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.accessibilityLabel = "Locations Table"
        self.view.accessibilityLabel = "Locations Table"
        
        self.addButton.accessibilityIdentifier = "addButton"
        self.addButton.accessibilityLabel = "addButton"
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.locations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let location = store.locations[indexPath.row]
        
        cell.textLabel?.text = location.name
        cell.detailTextLabel?.text = String(location.trivia.count)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "trivia" {
            if let dest = segue.destination as? TriviaTableViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                dest.location = store.locations[indexPath.row]
            }
        }
        
        if segue.identifier == "add" {}
    
    }
    
    
    
    
    
    
}
