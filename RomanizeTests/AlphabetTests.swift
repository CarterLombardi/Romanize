//
//  AlphabetTests.swift
//  AlphabetTests
//
//  Created by Carter Lombardi on 7/24/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import XCTest
@testable import Romanize

class RomanizeTests: XCTestCase {

    var AlphabetSUT: Alphabet!
    
    override func setUp() {
        super.setUp()
        AlphabetSUT = Alphabet(letterSet: [
            Letter(original: "ㅂ", romanized: "B", sound: .consonant),
            Letter(original: "ㅣ", romanized: "I", sound: .vowel)])
    }
    
    override func tearDown() {
        super.tearDown()
        AlphabetSUT = nil
    }
    
    func testCorrectConsonantsYielded() {
        let expectedConsonants = [Letter(original: "ㅂ", romanized: "B", sound: .consonant)]
        let yieldedConsonants = AlphabetSUT.consonants
        
        XCTAssertEqual(expectedConsonants, yieldedConsonants)
    }

    func testCorrectVowelsYielded() {
        let expectedVowels = [Letter(original: "ㅣ", romanized: "I", sound: .vowel)]
        let yieldedVowels = AlphabetSUT.vowels
        
        XCTAssertEqual(expectedVowels, yieldedVowels ?? [])
    }
}
