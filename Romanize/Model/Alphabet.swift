//
//  Alphabet.swift
//  Romanize
//
//  Created by Carter Lombardi on 7/25/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation


class Alphabet {
    var letterSet: [Letter]!
    
    init(letterSet: [Letter]) {
        self.letterSet = letterSet
    }
}

class Letter: Equatable {
    
    var original: String
    var romanized: String
    var soundCase: LetterSound
    var difficultyLevel: Int
    
    init(original: String, romanized: String, sound: LetterSound, diffculty: Int = 0) {
        self.original = original
        self.romanized = romanized
        self.soundCase = sound
        self.difficultyLevel = diffculty
    }
    
    //Equatable
    static func == (lhs: Letter, rhs: Letter) -> Bool {
        guard lhs.original == rhs.original else {return false}
        guard lhs.romanized == rhs.romanized else {return false}
        guard lhs.soundCase == rhs.soundCase else {return false}
        guard lhs.difficultyLevel == rhs.difficultyLevel else {return false}
        
        return true
    }
}

enum LetterSound {
    case consonant, vowel
}

extension Alphabet {
    var consonants: [Letter]? { return self.letterSet.filter({letter in return letter.soundCase == .consonant}) }
    var vowels: [Letter]? { return self.letterSet.filter({letter in return letter.soundCase == .vowel}) }
}