//
//  AlphabetSelectorView.swift
//  Romanize
//
//  Created by Carter Lombardi on 7/24/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct AlphabetSelectorView: View {
    var body: some View {
        List {
            AlphabetRow(originalTitle: "한글", romanizedTitle: "Hangul", progressString: "25.3%")
            AlphabetRow(originalTitle: "лца", romanizedTitle: "Cyrillic", progressString: "11.9%")
        }
    }
}

struct AlphabetSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        AlphabetSelectorView().colorScheme(.dark)
    }
}
