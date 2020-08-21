//
//  Alphabets.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/1/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation

struct Alphabets {
    static let Hangul = Alphabet(letterSet: [
        //Consonants
        Letter(original: "ㄴ", romanized: "N", sound: .consonant),
        Letter(original: "ㄱ", romanized: "G/K", sound: .consonant),
        Letter(original: "ㅎ", romanized: "H", sound: .consonant),
        Letter(original: "ㅅ", romanized: "S", sound: .consonant),
        Letter(original: "ㅈ", romanized: "J", sound: .consonant),
        Letter(original: "ㅂ", romanized: "B", sound: .consonant),
        Letter(original: "ㄹ", romanized: "R/L", sound: .consonant),
        Letter(original: "ㄷ", romanized: "D", sound: .consonant),
        Letter(original: "ㅁ", romanized: "M", sound: .consonant),
        //Vowels
        Letter(original: "ㅣ", romanized: "I", sound: .vowel),
        Letter(original: "ㅏ", romanized: "A", sound: .vowel),
        Letter(original: "ㅓ", romanized: "EO", sound: .vowel),
        Letter(original: "ㅡ", romanized: "EU", sound: .vowel),
        Letter(original: "ㅗ", romanized: "O", sound: .vowel),
        Letter(original: "ㅜ", romanized: "U", sound: .vowel)])
    
//    static let Cyrillic = Alphabet(letterSet: [
//        //Consonants
//        Letter(original: <#T##String#>, romanized: <#T##String#>, sound: <#T##LetterSound#>)
//    ])
}
