//
//  Lessons.swift
//  Romanize
//
//  Created by Carter Lombardi on 9/3/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation

struct Lessons {
    struct Hangul {
        static let Lessons = [
            Lesson("Consonants", associatedAlphabet: Alphabets.Hangul, letterSet: Alphabets.Hangul.consonants!, instructions: "Learn the consonants"),
            Lesson("Vowels", associatedAlphabet: Alphabets.Hangul, letterSet: Alphabets.Hangul.vowels!, instructions: "Learn the vowels")
        ]
    }
    
    struct Cyrillic {
        static let Lessons = [
            Lesson("Consonants", associatedAlphabet: Alphabets.Cyrillic, letterSet: Alphabets.Cyrillic.consonants!, instructions: "Learn the consonants"),
            Lesson("Vowels", associatedAlphabet: Alphabets.Cyrillic, letterSet: Alphabets.Cyrillic.vowels!, instructions: "Learn the vowels")
        ]
    }
}
