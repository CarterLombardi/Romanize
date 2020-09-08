//
//  LessonView.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/23/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct LessonView: View {
    
    @State private var isFlipped: Bool = false
    @State private var currentLetter: Letter = Letter(original: "ㅈ", romanized: "J", sound: .consonant)
    
    
    public var lettersInLesson: [Letter] = Alphabets.Hangul.consonants!
    
    private func letterFinished(isCorrect: Bool) {
        
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
            
            Text(isFlipped ? currentLetter.romanized : currentLetter.original)
                .font(.custom("LetterDisplay", size: 253))
            
            HStack{
                ForEach([buttonLabel("No"),buttonLabel("Flip"), buttonLabel("Yes")]) { buttonLabel in
                    Button(buttonLabel.id) {
                        self.buttonPressed(on: buttonLabel)
                    }.frame(width: 90, height: 50, alignment: .center)
                }
            }
        }
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView(lettersInLesson: [])
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
