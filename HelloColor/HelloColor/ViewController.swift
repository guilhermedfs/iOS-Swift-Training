//
//  ViewController.swift
//  HelloColor
//
//  Created by Guilherme Daniel Fernandes da Silva on 08/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var isPurple = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeColor(_ sender: Any) {
        
        if isPurple {
            view.backgroundColor = UIColor.blue
            isPurple = false
        } else {
            view.backgroundColor = UIColor.purple
            isPurple = true
        }
        
    }
}

