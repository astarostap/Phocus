//
//  TakePhotoViewController.swift
//  Phocus
//
//  Created by Abraham Starosta on 11/9/15.
//  Copyright © 2015 Abraham Starosta. All rights reserved.
//

import UIKit

class TakePhotoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var takePhotoButoon: UIButton!
    
    @IBAction func TakePhoto(sender: UIButton) {
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
