//
//  Alphabet.swift
//  Romanize
//
//  Created by Carter Lombardi on 7/25/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation


class Alphabet: Identifiable {

    var originalTitleRepresentation: String
    var romanizedTitle: String
    var progressRepresentation: String
    
    var id: String { return romanizedTitle }
    
    var letterSet: [Letter]!
    
    init(title: String, titleOrginal: String, letterSet: [Letter]) {
        self.letterSet = letterSet
        self.originalTitleRepresentation = titleOrginal
        self.romanizedTitle = title
        //TODO: Replace tmp implementation
        self.progressRepresentation = "25.3%"
    }
}

class Letter: Equatable {
    
    var original: String
    var romanized: String
    var soundCase: LetterSound
    var difficulty: difficultyTier
    
    init(original: String, romanized: String, sound: LetterSound, diffculty: difficultyTier = .normal) {
        self.original = original
        self.romanized = romanized
        self.soundCase = sound
        self.difficulty = diffculty
    }
    
    //Equatable
    static func == (lhs: Letter, rhs: Letter) -> Bool {
        guard lhs.original == rhs.original else {return false}
        guard lhs.romanized == rhs.romanized else {return false}
        guard lhs.soundCase == rhs.soundCase else {return false}
        guard lhs.difficulty == rhs.difficulty else {return false}
        
        return true
    }
}

enum LetterSound {
    case consonant, vowel
}

enum difficultyTier {
    case normal, special, advanced, modified
}

extension Alphabet {
    var consonants: [Letter]? { return self.letterSet.filter({letter in return letter.soundCase == .consonant}) }
    var vowels: [Letter]? { return self.letterSet.filter({letter in return letter.soundCase == .vowel}) }
}
