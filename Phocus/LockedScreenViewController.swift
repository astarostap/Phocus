//
//  LockedScreenViewController.swift
//  Phocus
//
//  Created by Abraham Starosta on 11/13/15.
//  Copyright © 2015 Abraham Starosta. All rights reserved.
//

import UIKit

class LockedScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func userFailedToPhocus(sender: UIButton) {
        let alert = UIAlertController(
            title: "You failed to Phocus!",
            message: nil,
            preferredStyle: UIAlertControllerStyle.Alert
        )
        presentViewController(alert, animated: true, completion: nil)
        let delayTime = dispatch_time(DISPATCH_TIME_NOW,
            Int64(Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.dismissViewControllerAnimated(true, completion: nil)
            self.performSegueWithIdentifier("GoToFeed", sender: nil)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
