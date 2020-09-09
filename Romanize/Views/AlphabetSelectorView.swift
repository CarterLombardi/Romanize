//
//  AlphabetSelectorView.swift
//  Romanize
//
//  Created by Carter Lombardi on 7/24/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct AlphabetSelectorView: View {
    
    public var alphabets: [Alphabet] = Alphabets.allAlphabets
    
    var body: some View {
        NavigationView {
            List(alphabets) { alphabet in
                NavigationLink(destination: LessonSelectorView(alphabet: alphabet, lessons: Lessons.lessonsForAlphabet(alphabet))) {
                    AlphabetRow(originalTitle: alphabet.originalTitleRepresentation,
                                romanizedTitle: alphabet.romanizedTitle,
                                progressString: alphabet.progressRepresentation)
                }
            }.navigationBarTitle("Alphabets")
        }
    }
}

struct AlphabetSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        AlphabetSelectorView().colorScheme(.dark)
    }
}
