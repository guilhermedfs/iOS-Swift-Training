//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var counter: Int = 0
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer?

    @IBOutlet weak var eggLabel: UILabel!
    @IBOutlet weak var progressBarView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func hotnessSelected(_ sender: UIButton) {
                
        timer.invalidate()
        
        progressBarView.progress = 0.0
        secondsPassed = 0
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        eggLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }

    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
            let porcentageProgress = Float(secondsPassed) / Float(totalTime)
            progressBarView.progress = porcentageProgress
            secondsPassed += 1
        } else {
            timer.invalidate()
            progressBarView.progress = 1.0
            eggLabel.text = "DONE!"
            playSound()
        }
        
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}
