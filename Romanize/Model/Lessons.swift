//
//  Lessons.swift
//  Romanize
//
//  Created by Carter Lombardi on 9/3/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation

struct Lessons {
    struct Hangul: LessonContainer {
        let associatedAlphabet: Alphabet = Alphabets.Hangul
        let Lessons = [
            Lesson("Consonants", associatedAlphabet: Alphabets.Hangul, letterSet: Alphabets.Hangul.consonants!, instructions: "Learn the consonants"),
            Lesson("Vowels", associatedAlphabet: Alphabets.Hangul, letterSet: Alphabets.Hangul.vowels!, instructions: "Learn the vowels")
        ]
    }
    
    struct Cyrillic: LessonContainer {
         let associatedAlphabet: Alphabet = Alphabets.Cyrillic
         let Lessons = [
            Lesson("Consonants", associatedAlphabet: Alphabets.Cyrillic, letterSet: Alphabets.Cyrillic.consonants!, instructions: "Learn the consonants"),
            Lesson("Vowels", associatedAlphabet: Alphabets.Cyrillic, letterSet: Alphabets.Cyrillic.vowels!, instructions: "Learn the vowels")
        ]
    }
}

protocol LessonContainer {
    var associatedAlphabet: Alphabet { get }
    var Lessons: [Lesson] { get }
}

extension Lessons {
    static var allLessonContainers: [LessonContainer] {
        return [Lessons.Hangul(), Lessons.Cyrillic()]
    }
    
    static func lessonsForAlphabet(_ alphabet: Alphabet) -> [Lesson] {
        return Lessons.allLessonContainers.first(where: {$0.associatedAlphabet == alphabet})!.Lessons
    }
}
