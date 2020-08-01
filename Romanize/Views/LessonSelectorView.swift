//
//  LessonSelectorView.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/1/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct LessonSelectorView: View {
    var body: some View {
        List {
            LessonHeadingRow(headingIndex: 1, headingString: "Learn the letters")
            LessonRow(lessonName: "Consonants", progressNumerator: 2, progressDenominator: 53)
            LessonRow(lessonName: "Vowels", progressNumerator: 1, progressDenominator: 19)
            LessonRow(lessonName: "Special", progressNumerator: 0, progressDenominator: 20)
            LessonHeadingRow(headingIndex: 2, headingString: "Practice")
            LessonRow(lessonName: "Letters", progressNumerator: 0, progressDenominator: 0)
            LessonRow(lessonName: "Words", progressNumerator: 0, progressDenominator: 0)
            LessonRow(lessonName: "Cognates", progressNumerator: 0, progressDenominator: 0)
        }
    }
}

struct LessonSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        LessonSelectorView().colorScheme(.dark)
    }
}
