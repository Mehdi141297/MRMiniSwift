//
//  SpilViewController.swift
//  MRMini
//
//  Created by Mehdi Al-alak on 09/05/2018.
//  Copyright © 2018 Mehdi Al-alak. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class SpilViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    @IBOutlet weak var pointLabel: UILabel!
    
    @IBOutlet weak var Medal: UIButton!
    @IBOutlet weak var Scissors: UIButton!
    @IBOutlet weak var Screw: UIButton!
    @IBOutlet weak var Fork: UIButton!
    @IBOutlet weak var Needle: UIButton!
    @IBOutlet weak var Apple: UIButton!
    @IBOutlet weak var Ted: UIButton!
    @IBOutlet weak var Book: UIButton!
    @IBOutlet weak var Milk: UIButton!
    @IBOutlet weak var IceCreem: UIButton!
    @IBOutlet weak var Options: UIView!
    
    var Score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = Bundle.main.url(forResource: "chime_bell_ding", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:  url!)
            audioPlayer.prepareToPlay()
            
        }
        catch let error as NSError {
            print(error.debugDescription)
        }
    }
    
    @IBAction func medalAction(_ sender: UIButton) {
        audioPlayer.play()
        Score += 1
        pointLabel.text = NSString(format: "Point : %i", Score) as String
        Medal.isHidden = true
        
        if Score == 5 {
            Options.isHidden = !Options.isHidden
        }
    }
    
    @IBAction func scissorsAction(_ sender: UIButton) {
        audioPlayer.play()
        Score += 1
        pointLabel.text = NSString(format: "Point : %i", Score) as String
        Scissors.isHidden = true
        
        if Score == 5 {
            Options.isHidden = !Options.isHidden
        }
    }
    
    @IBAction func screwAction(_ sender: UIButton) {
        audioPlayer.play()
        Score += 1
        pointLabel.text = NSString(format: "Point : %i", Score) as String
        Screw.isHidden = true
        
        if Score == 5 {
            Options.isHidden = !Options.isHidden
        }
    }
    
    @IBAction func forkAction(_ sender: UIButton) {
        audioPlayer.play()
        Score += 1
        pointLabel.text = NSString(format: "Point : %i", Score) as String
        Fork.isHidden = true
        
        if Score == 5 {
            Options.isHidden = !Options.isHidden
        }
        
    }
    
    @IBAction func needleAction(_ sender: UIButton) {
        audioPlayer.play()
        Score += 1
        pointLabel.text = NSString(format: "Point : %i", Score) as String
        Needle.isHidden = true
        
        if Score == 5 {
            Options.isHidden = !Options.isHidden
        }
    }
    
    
    @IBAction func resetAction(_ sender: UIButton) {
        Score -= 5
        pointLabel.text = NSString(format: "Point : %i", Score) as String
        Options.isHidden = true
        
        Medal.isHidden = !Medal.isHidden
        Scissors.isHidden = !Scissors.isHidden
        Screw.isHidden = !Screw.isHidden
        Fork.isHidden = !Fork.isHidden
        Needle.isHidden = !Needle.isHidden
    }
    @IBAction func appleAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    @IBAction func tedAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    @IBAction func bookAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    @IBAction func milkAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    @IBAction func iceCreemAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
}


