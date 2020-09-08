//
//  Alphabets.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/1/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation

public struct Alphabets {
    static let Hangul = Alphabet(title: "Hangul", titleOrginal: "한글",
                                 letterSet: [
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
    
    static let Cyrillic = Alphabet(title: "Cyrillic", titleOrginal: "лца",
                                   letterSet: [
                                    Letter(original: "A a", romanized: "A", sound: .vowel),
                                    Letter(original: "Б б", romanized: "B", sound: .consonant),
                                    Letter(original: "В в", romanized: "V", sound: .consonant),
                                    Letter(original: "Г г", romanized: "G", sound: .consonant),
                                    Letter(original: "Д д", romanized: "D", sound: .consonant),
                                    Letter(original: "Е е", romanized: "E", sound: .vowel),
                                    Letter(original: "Ё ё", romanized: "YO", sound: .vowel),
                                    Letter(original: "Ж ж", romanized: "ZH", sound: .consonant),
                                    Letter(original: "З з", romanized: "Z", sound: .consonant),
                                    Letter(original: "И и", romanized: "I", sound: .vowel),
                                    Letter(original: "Й й", romanized: "J", sound: .consonant),
                                    Letter(original: "К к", romanized: "K", sound: .consonant),
                                    Letter(original: "Л л", romanized: "L", sound: .consonant),
                                    Letter(original: "М м", romanized: "M", sound: .consonant),
                                    Letter(original: "Н н", romanized: "N", sound: .consonant),
                                    Letter(original: "О о", romanized: "O", sound: .vowel),
                                    Letter(original: "П п", romanized: "P", sound: .consonant),
                                    Letter(original: "Р р", romanized: "R", sound: .consonant),
                                    Letter(original: "С с", romanized: "S", sound: .consonant),
                                    Letter(original: "Т т", romanized: "T", sound: .consonant),
                                    Letter(original: "У у", romanized: "U", sound: .vowel),
                                    Letter(original: "Ф ф", romanized: "F", sound: .consonant),
                                    Letter(original: "Х х", romanized: "H", sound: .consonant),
                                    Letter(original: "Ц ц", romanized: "TS", sound: .consonant),
                                    Letter(original: "Ч ч", romanized: "CH", sound: .consonant),
                                    Letter(original: "Ш ш", romanized: "SH", sound: .consonant),
                                    Letter(original: "Щ щ", romanized: "SHCH", sound: .consonant),
                                    Letter(original: "Ъ ъ", romanized: "'", sound: .vowel),
                                    Letter(original: "Ы ы", romanized: "Y", sound: .vowel),
                                    Letter(original: "Ь ь", romanized: "'", sound: .vowel),
                                    Letter(original: "Э э", romanized: "E", sound: .vowel),
                                    Letter(original: "Ю ю", romanized: "YU", sound: .vowel),
                                    Letter(original: "Я я", romanized: "YA", sound: .vowel)])
}

extension Alphabets {
    static var allAlphabets: [Alphabet] {
        return [Alphabets.Hangul, Alphabets.Cyrillic]
    }
}
