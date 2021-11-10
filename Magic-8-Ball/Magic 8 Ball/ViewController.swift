//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var askImageView: UIImageView!
    
    let ballArray: [UIImage] = [
        UIImage(named: "ball1.png")!,
        UIImage(named: "ball2.png")!,
        UIImage(named: "ball3.png")!,
        UIImage(named: "ball4.png")!,
        UIImage(named: "ball5.png")!
    ]


    @IBAction func askButtonPressed(_ sender: UIButton) {
        askImageView.image = ballArray.randomElement()
    }

}

