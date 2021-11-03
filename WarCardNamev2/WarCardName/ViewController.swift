//
//  ViewController.swift
//  WarCardName
//
//  Created by Guilherme Daniel on 02/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        leftImageView.image = UIImage(named: "card\(randNumbers())")
        rightImageView.image = UIImage(named: "card\(randNumbers())")
    }
    
    func randNumbers() -> Int{
        return Int.random(in: 2...14)
    }
    
}

