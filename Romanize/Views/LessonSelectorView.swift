//
//  LessonSelectorView.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/1/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct LessonSelectorView: View {
    
    var alphabet: Alphabet
    var lessons: [Lesson]
    
    var body: some View {
        List {
            LessonHeadingRow(headingIndex: 1, headingString: "Learn the letters")
            ForEach(lessons, id: \.self) { lesson in
                LessonRow(lessonName: lesson.title, progressNumerator: 0, progressDenominator: lesson.letterSet.count)
            }
            LessonHeadingRow(headingIndex: 2, headingString: "Practice")
            LessonRow(lessonName: "Letters", progressNumerator: 0, progressDenominator: 0)
            LessonRow(lessonName: "Words", progressNumerator: 0, progressDenominator: 0)
            LessonRow(lessonName: "Cognates", progressNumerator: 0, progressDenominator: 0)
        }.navigationBarTitle(alphabet.romanizedTitle)
    }
}

struct LessonSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        LessonSelectorView(alphabet: Alphabets.Hangul, lessons: Lessons.Hangul.Lessons).colorScheme(.dark)
    }
}
