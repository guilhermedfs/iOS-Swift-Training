//
//  Controller.swift
//  mvc-training
//
//  Created by Guilherme Daniel Fernandes da Silva on 07/11/21.
//

import UIKit

class Controller: UIViewController {
    
    @IBOutlet weak var iphoneNameLabel: UILabel!
    @IBOutlet weak var iphoneColorLabel: UILabel!
    @IBOutlet weak var iphonePriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appleProduct = AppleProduct(name: "iPhone 10", color: "Space Gray", price: 999.99)
        
        iphoneNameLabel.text = appleProduct.name
        iphoneColorLabel.text = "in \(appleProduct.color)"
        iphonePriceLabel.text = "$\(appleProduct.price)"
        
        let label = UILabel(frame: CGRect(x:0, y:0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 500)
        label.textAlignment = .center
        label.text = "Testando criação"
        label.font = UIFont.boldSystemFont(ofSize: 20)
            
        self.view.addSubview(label)
    }


}

