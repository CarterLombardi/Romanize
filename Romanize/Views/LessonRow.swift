//
//  LessonRow.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/1/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct LessonRow: View {
    
    public var lessonName: String
    public var progressNumerator: Int
    public var progressDenominator: Int
    
    var body: some View {
        HStack {
            Spacer()
            Text(lessonName)
                .bold()
                .fontWeight(.bold)
                .font(.title)
            Text("\(progressNumerator)/\(progressDenominator)")
                .fontWeight(.light)
                .font(.caption)
            Spacer()
        }
    }
}

struct LessonRow_Previews: PreviewProvider {
    static var previews: some View {
        LessonRow(lessonName: "Vowels", progressNumerator: 25, progressDenominator: 53)
            .previewLayout(.fixed(width: 350, height: 80))
    }
}
