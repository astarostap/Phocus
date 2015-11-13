//
//  CountDownViewController.swift
//  Phocus
//
//  Created by Abraham Starosta on 11/9/15.
//  Copyright © 2015 Abraham Starosta. All rights reserved.
//

import UIKit

class CountDownViewController: UIViewController {

    @IBOutlet weak var CountdownLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupGame()
    }

    var seconds = 30
    var timer: NSTimer?
    
    func setupGame() {
        CountdownLabel.text = "Time: " + String(seconds)
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "subtractTime", userInfo: nil, repeats: true)
        print("hello my world of Stanford in cs147")
    }

    func subtractTime() {
        seconds -= 1
        CountdownLabel.text = "Time: " + String(seconds)
        if (seconds == 0) {
            timer?.invalidate()
            performSegueWithIdentifier("StartPhocusSession", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let timer = timer {
            timer.invalidate()
        }
    }

}
