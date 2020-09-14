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
    @State private var nextLetter: Letter = Letter(original: "??", romanized: "??", sound: .consonant)
    
    @State private var completedLetters: [Letter] = []
    @State private var cardOffset = CGSize.zero
    
    private let completionThreshold: CGFloat = 100
    
    private func initialize() {
        self.currentLetter = self.lesson.letterSet.first!
        if self.lesson.letterSet.count > 1 {
            self.nextLetter = self.lesson.letterSet[1]
        }
    }
    
    private func letterFinished(isCorrect: Bool) {
        //TODO: Set letter state
        completedLetters.append(currentLetter)
        if let nextNewLetter = lesson.letterSet.first(where: {!completedLetters.contains($0)}) {
            currentLetter = nextNewLetter
            if let currentLetterIndex = lesson.letterSet.firstIndex(of: currentLetter) {
                let lettersRemain = lesson.letterSet.count != currentLetterIndex + 1
                nextLetter = lettersRemain ? lesson.letterSet[currentLetterIndex + 1] : Letter(original: "✓", romanized: "✓", sound: .consonant)
            }
            isFlipped = false
        }
    }
    
    private func dragFinished() {
        if cardOffset.width > completionThreshold {
            letterFinished(isCorrect: true)
        }
        else if cardOffset.width < -completionThreshold {
            letterFinished(isCorrect: false)
        }
        cardOffset = CGSize.zero
    }
    
    var body: some View {
        VStack {
            ZStack {
                ForEach([nextLetter, currentLetter], id: \.self) { letter in
                    LessonCardView(letter: letter)
                        .frame(width: 350, height: 450, alignment: .center)
                        .offset(x: letter == self.currentLetter ? self.cardOffset.width * 3 : 0, y: 0)
                        .gesture(DragGesture()
                            .onChanged({ gesture in
                            self.cardOffset = gesture.translation }
                        ).onEnded({_ in
                            self.dragFinished()}))
                }
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
