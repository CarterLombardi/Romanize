//
//  Lesson.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/1/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation

class Lesson: Hashable, Equatable {
    
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
    
    //Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.title)
        hasher.combine(self.associatedAlphabet)
        hasher.combine(self.letterSet)
        hasher.combine(self.instructions)
    }
    
    //Equatable
    static func == (lhs: Lesson, rhs: Lesson) -> Bool {
        guard lhs.title == rhs.title else {return false}
        guard lhs.associatedAlphabet == rhs.associatedAlphabet else {return false}
        guard lhs.letterSet == rhs.letterSet else {return false}
        guard lhs.instructions == rhs.instructions else {return false}
        
        return true
    }
}

enum LessonType {
    case presentation, rightWrong
}
