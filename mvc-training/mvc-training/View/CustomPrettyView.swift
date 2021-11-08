//
//  CustomPrettyView.swift
//  mvc-training
//
//  Created by Guilherme Daniel Fernandes da Silva on 07/11/21.
//

import UIKit

class CustomPrettyView: UIView {

    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowRadius = 10
        layer.opacity = 0.75
        backgroundColor = UIColor.systemPink
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 5
    }

}
