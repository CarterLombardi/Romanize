//
//  AlphabetRow.swift
//  Romanize
//
//  Created by Carter Lombardi on 7/31/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct AlphabetRow: View {
    
    public var originalTitle: String
    public var romanizedTitle: String
    public var progressString: String
    
    private let captionSpacing: CGFloat = -8
    
    var body: some View {
        HStack {
            VStack(spacing: captionSpacing) {
                Text(originalTitle)
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Text(romanizedTitle)
                    .fontWeight(.light)
                    .font(.subheadline)
            }
            Spacer()
            Text(progressString)
        }.padding()
    }
}

struct AlphabetRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AlphabetRow(originalTitle: "한글", romanizedTitle: "Hangul", progressString: "25.3%")
                .previewLayout(.fixed(width: 300, height: 70))
            AlphabetRow(originalTitle: "Кириллица", romanizedTitle: "Cyrillic", progressString: "11.9%")
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
