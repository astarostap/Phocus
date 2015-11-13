//
//  FeedTableViewController.swift
//  Phocus
//
//  Created by Abraham Starosta on 11/8/15.
//  Copyright © 2015 Abraham Starosta. All rights reserved.
//

import UIKit

class FeedTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FeedCell", forIndexPath: indexPath)
        
        if let feedCell = cell as? FeedCell {
            feedCell.textLabel?.text = "hola"
            feedCell.detailTextLabel?.text = "challengeDescription"
        }

        return cell
    }
}
