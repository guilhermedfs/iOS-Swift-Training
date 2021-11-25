//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Guilherme Silva on 19/11/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let text: String
    let answers: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
