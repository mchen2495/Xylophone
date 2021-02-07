//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        print(sender.titleLabel!.text!)
        print("start")
        
        playSound(soundName: sender.titleLabel!.text!)
        
        sender.alpha = 0.5
        
        //delay execution of code below for 0.2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            print("end")
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

