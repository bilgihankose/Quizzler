//
//  Question.swift
//  Quizzler
//
//  Created by Bilgihan Köse on 23.05.2020.
//  Copyright © 2020 Bilgihan Kose. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var answer: String
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
    
}
