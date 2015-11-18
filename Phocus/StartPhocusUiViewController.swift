//
//  StartPhocusUiViewController.swift
//  Phocus
//
//  Created by Abraham Starosta on 11/9/15.
//  Copyright © 2015 Abraham Starosta. All rights reserved.
//

import UIKit

class StartPhocusUiViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let timePicked = datePicker.date
        let calendar = NSCalendar.currentCalendar()
        let comp = calendar.components([.Hour, .Minute], fromDate: timePicked)
        let hour = Int(comp.hour)
        let minute = Int(comp.minute)
        let totalMinutes = 60 * hour + minute
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(totalMinutes, forKey: "sessionNumMinutes")
        
        let currTime = NSDate()
        defaults.setObject(currTime, forKey: "sessionStarted")
        print(timePicked)
    }
    

}
