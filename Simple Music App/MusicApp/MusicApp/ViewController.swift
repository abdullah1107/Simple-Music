//
//  ViewController.swift
//  MusicApp
//
//  Created by Muhammad Abdullah Al Mamun on 11/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
    var soundArray = ["note1", "note2", "note3", "note4", "note5", "note6"]
    var selectedSoundFileName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func button_pressed(_ sender: UIButton) {
        //print(sender.tag)
        selectedSoundFileName = soundArray[sender.tag - 1]
        print(selectedSoundFileName)
        playSound()
    }
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        if let soundurl = soundURL{
           // print(soundurl)
            
            audioPlayer = try! AVAudioPlayer(contentsOf: soundurl)
            
            audioPlayer.play()
        }
        
    }
    
}

