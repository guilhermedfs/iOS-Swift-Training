//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Guilherme Silva on 21/11/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var porcentage: Float?
    var value: Float?
    var quantity: Int?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = "$\(value!)"
        settingsLabel.text = "Split between \(quantity!) people, with \(porcentage!*100)% tip."
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
