//
//  Lesson.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/1/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation

class Lesson {
    var title: String
    var associatedAlphabet: Alphabet
    var letterSet: [Letter]
    var instructions: String?
    
    init(_ title: String, associatedAlphabet: Alphabet, letterSet: [Letter], instructions: String?) {
        self.title = title
        self.associatedAlphabet = associatedAlphabet
        self.letterSet = letterSet
        self.instructions = instructions
    }
}
