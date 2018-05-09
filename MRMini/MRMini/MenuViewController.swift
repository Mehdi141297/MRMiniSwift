//
//  MenuViewController.swift
//  MRMini
//
//  Created by Mehdi Al-alak on 09/05/2018.
//  Copyright © 2018 Mehdi Al-alak. All rights reserved.
//

import UIKit
import AVFoundation

class MenuViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = Bundle.main.url(forResource: "buttonclick", withExtension: "mp3")
        
        do {
        audioPlayer = try AVAudioPlayer(contentsOf:  url!)
        audioPlayer.prepareToPlay()
            
        }
        catch let error as NSError {
            print(error.debugDescription)
        }
        
    }

    @IBAction func settingsAction(_ sender: UIButton) {
        audioPlayer.play()
    }
    
    @IBAction func scanAction(_ sender: UIButton) {
        audioPlayer.play()
    }
    
    @IBAction func infoAction(_ sender: UIButton) {
        audioPlayer.play()
    }
    
    @IBAction func gameAction(_ sender: UIButton) {
        audioPlayer.play()
    }
}
