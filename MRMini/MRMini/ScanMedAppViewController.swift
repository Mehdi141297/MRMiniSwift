//
//  ScanMedAppViewController.swift
//  MRMini
//
//  Created by Mehdi Al-alak on 09/05/2018.
//  Copyright © 2018 Mehdi Al-alak. All rights reserved.
//

import UIKit
import AVFoundation

class ScanMedAppViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    
    @IBOutlet weak var manImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
              manImage.isUserInteractionEnabled = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture))
        manImage.addGestureRecognizer(tapGesture)
        
        let url = Bundle.main.url(forResource: "mri_scan_sound", withExtension: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:  url!)
            audioPlayer.prepareToPlay()
            
        }
        catch let error as NSError {
            print(error.debugDescription)
        }
        audioPlayer.play()
        
    }
    @objc func tapGesture(){
        
        if manImage.image == UIImage(named:  "man0") {
            
            manImage.image = UIImage(named: "man1")
        }
        else {
            manImage.image = UIImage(named: "man0")
        }
    }

}
