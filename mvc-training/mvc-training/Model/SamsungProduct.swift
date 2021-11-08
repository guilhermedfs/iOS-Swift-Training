//
//  SamsungProduct.swift
//  mvc-training
//
//  Created by Guilherme Daniel Fernandes da Silva on 08/11/21.
//

import Foundation

class SamsungProduct{
    public private(set) var name: String
    public private(set) var color: String
    public private(set) var price: Double
    
    init(name: String, color: String, price: Double){
        self.name = name
        self.color = color
        self.price = price
    }
}
