//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        let textButton = sender.titleLabel?.text
        story.checkAnswer(buttonText: textButton!)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = story.getStoryText()
        choice1Button.setTitle(story.getButtonText(choice: 1), for: .normal)
        choice2Button.setTitle(story.getButtonText(choice: 2), for: .normal)
    }
    
}

