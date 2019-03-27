//
//  ViewController.swift
//  Xylophone
//
//  Created by Nate Davis
//  Copyright © 2019
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{

    var selectedSoundFile : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        selectedSoundFile = "note" + String(sender.tag)
        
        playSound()
    }
    
    func playSound() {
        if let soundURL = Bundle.main.url(forResource: selectedSoundFile, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
    
  

}

