//
//  ViewController.swift
//  Xylophone
//
//  Created by Nikolai Astakhov on 17.12.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.alpha = 0.8
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            sender.alpha = 1
        }
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
         
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

