//
//  FeedTableViewController.swift
//  Phocus
//
//  Created by Abraham Starosta on 11/8/15.
//  Copyright © 2015 Abraham Starosta. All rights reserved.
//

import UIKit

class FeedTableViewController: UITableViewController {

    @IBAction func challengeSent(sender: UIButton) {
        var alert: UIAlertController
        alert = UIAlertController(
                title: "Challenge sent to your friend",
                message: nil,
                preferredStyle: UIAlertControllerStyle.Alert
            )
        presentViewController(alert, animated: true, completion: nil)
        let nsec = Double(NSEC_PER_SEC)
        let delayTime = dispatch_time(DISPATCH_TIME_NOW,
            Int64(nsec))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 1
//    }
//
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("FeedCell", forIndexPath: indexPath)
//        
//        if let feedCell = cell as? FeedCell {
//            feedCell.textLabel?.text = "hola"
//            feedCell.detailTextLabel?.text = "challengeDescription"
//        }
//
//        return cell
//    }
}
