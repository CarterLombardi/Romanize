//
//  LessonHeadingRow.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/1/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct LessonHeadingRow: View {
    
    public var headingIndex: Int
    public var headingString: String
    
    var body: some View {
        HStack {
            Text("\(headingIndex). \(headingString)")
                .bold()
                .font(.title)
            Spacer()
        }.padding()
    }
}

struct LessonHeadingRow_Previews: PreviewProvider {
    static var previews: some View {
        LessonHeadingRow(headingIndex: 1, headingString: "Learn the letters")
            .previewLayout(.fixed(width: 350, height: 80))
    }
}
