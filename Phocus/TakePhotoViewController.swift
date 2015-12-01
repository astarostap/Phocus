//
//  TakePhotoViewController.swift
//  Phocus
//
//  Created by Abraham Starosta on 11/9/15.
//  Copyright © 2015 Abraham Starosta. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class TakePhotoViewController: UIViewController {
    
    var ButtonAudioPlayer = AVAudioPlayer()

    
    @IBOutlet weak var PictureView: UIImageView!
    
    
    @IBAction func CameraTapped(sender: UIBarButtonItem) {
        ButtonAudioPlayer.play()
        let image: UIImage = UIImage(named: "woman_dance.jpg")!
        PictureView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let ButtonAudioUrl = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("camera", ofType: "wav")!)
        do {
            try ButtonAudioPlayer = AVAudioPlayer(contentsOfURL: ButtonAudioUrl)
        } catch {
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func TakePhoto(sender: UIButton) {
        var soundPath:NSURL?
        if let path = NSBundle.mainBundle().pathForResource("camera", ofType: "wav") {
            soundPath = NSURL(fileURLWithPath: path)
            do {
                let sound = try AVAudioPlayer(contentsOfURL: soundPath!, fileTypeHint:nil)
                sound.prepareToPlay()
                sound.play()
            } catch {
                //Handle the error
            }
        }
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
