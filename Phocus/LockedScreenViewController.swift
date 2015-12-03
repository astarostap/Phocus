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

    func didUserSucceed(currTime: NSDate) -> Bool {
        let defaults = NSUserDefaults.standardUserDefaults()
        let start = defaults.valueForKey("sessionStarted") as! NSDate
        let minutesPhocused = currTime.minutesFrom(start)
        let minutesToPhocus = defaults.valueForKey("sessionNumMinutes") as! Int
        
        if (minutesPhocused >= minutesToPhocus) {
            return true
        } else {
            return false
        }
    }
    

    @IBAction func userFailedToPhocus(sender: UIButton) {
        var alert: UIAlertController
        let userSuccess = didUserSucceed(NSDate())
        if (!userSuccess) {
            alert = UIAlertController(
                title: "You failed to Phocus!",
                message: nil,
                preferredStyle: UIAlertControllerStyle.Alert
            )
        } else {
            alert = UIAlertController(
                title: "Congratulations you Phocused!",
                message: nil,
                preferredStyle: UIAlertControllerStyle.Alert
            )
        }
        presentViewController(alert, animated: true, completion: nil)
        let nsec = 5 * Double(NSEC_PER_SEC)
        let delayTime = dispatch_time(DISPATCH_TIME_NOW,
            Int64(nsec))
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

extension NSDate {
    func yearsFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Year, fromDate: date, toDate: self, options: []).year
    }
    func monthsFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Month, fromDate: date, toDate: self, options: []).month
    }
    func weeksFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.WeekOfYear, fromDate: date, toDate: self, options: []).weekOfYear
    }
    func daysFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Day, fromDate: date, toDate: self, options: []).day
    }
    func hoursFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Hour, fromDate: date, toDate: self, options: []).hour
    }
    func minutesFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Minute, fromDate: date, toDate: self, options: []).minute
    }
    func secondsFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Second, fromDate: date, toDate: self, options: []).second
    }
    func offsetFrom(date:NSDate) -> String {
        if yearsFrom(date)   > 0 { return "\(yearsFrom(date))y"   }
        if monthsFrom(date)  > 0 { return "\(monthsFrom(date))M"  }
        if weeksFrom(date)   > 0 { return "\(weeksFrom(date))w"   }
        if daysFrom(date)    > 0 { return "\(daysFrom(date))d"    }
        if hoursFrom(date)   > 0 { return "\(hoursFrom(date))h"   }
        if minutesFrom(date) > 0 { return "\(minutesFrom(date))m" }
        if secondsFrom(date) > 0 { return "\(secondsFrom(date))s" }
        return ""
    }
}
