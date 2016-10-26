//
//  TriviaTableViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Arvin San Miguel on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TriviaTableViewController: UITableViewController {

    var location : Location!
    
    @IBOutlet weak var addTriviaButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.accessibilityIdentifier = "Trivia Table"
        self.view.accessibilityLabel = "Trivia Table"
        self.addTriviaButton.accessibilityIdentifier = "Add Trivia Button"
        self.addTriviaButton.accessibilityLabel = "Add Trivia Button"
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return location.trivia.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "triviaCell", for: indexPath)
        let trivia = location.trivia[indexPath.row]
    
        cell.textLabel?.text = trivia.content
        cell.detailTextLabel?.text = String(trivia.likes)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let dest = segue.destination as? AddTriviaViewController {
            dest.location = self.location
        }
        
    }
    

}
