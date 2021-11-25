//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var porcentage: Float?
    var numberPeople: Int = 0
    var value: Float = 0.0
    
    @IBOutlet weak var billTextField: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    @IBAction func tipChanged(_ sender: UIButton) {
        diselectAll()
        sender.isSelected = true
        
        switch sender.titleLabel?.text {
        case "0%":
            porcentage = 0.00
        case "10%":
            porcentage = 0.10
        default:
            porcentage = 0.20
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberPeople = Int(sender.value)
        splitNumberLabel.text = String(numberPeople)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let part: Float
        
        if let valueBF = billTextField.text {
            value = Float(valueBF)!
        }
        
        part = (value) * (porcentage ?? 10.0)
        value += part
        value /= Float(numberPeople)
        print(value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        }
    
    func diselectAll() {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.porcentage = porcentage
            destinationVC.value = value
            destinationVC.quantity = numberPeople
        }
    }
}

