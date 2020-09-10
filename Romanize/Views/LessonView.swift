//
//  LessonView.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/23/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct LessonView: View {
    
    public var lesson: Lesson
    
    @State private var isFlipped: Bool = false
    @State private var currentLetter: Letter = Letter(original: "?", romanized: "?", sound: .consonant)
    @State private var completedLetters: [Letter] = []
    
    private func initialize() {
        self.currentLetter = self.lesson.letterSet.first!
    }
    
    private func letterFinished(isCorrect: Bool) {
        //TODO: Set letter state
        completedLetters.append(currentLetter)
        if let nextNewLetter = lesson.letterSet.first(where: {!completedLetters.contains($0)}) {
            currentLetter = nextNewLetter
            isFlipped = false
        }
    }
    
    private func buttonPressed(on button: buttonLabel) {
        if button.id == "Flip" {
            isFlipped.toggle()
        }
        
        if button.id == "No" {
            letterFinished(isCorrect: false)
        }
        
        if button.id == "Yes" {
            letterFinished(isCorrect: true)
        }
    }
    
    var body: some View {
        VStack {
            LessonCardView(letter: currentLetter)
                .frame(width: 350, height: 450, alignment: .center)
            Button("Update letter: \(currentLetter.original)") {
                self.letterFinished(isCorrect: true)
            }
        }.onAppear {
            self.initialize()
        }
        .navigationBarTitle(lesson.title)
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lesson: Lessons.Hangul().Lessons.first!)
    }
}

class buttonLabel: Identifiable {
    var id: String
    
    init(_ label: String) {
        self.id = label
    }
}

enum buttonLabelCase {
    case no, yes, flip
}
