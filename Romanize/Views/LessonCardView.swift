//
//  LessonCardView.swift
//  Romanize
//
//  Created by Carter Lombardi on 9/9/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import SwiftUI

struct LessonCardView: View {
    
    @ObservedObject public var letter: Letter
    @State public var isFlipped = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left.2")
                    .padding(32)
                    .font(.custom("Arrow", size: 40))
                    .foregroundColor(isFlipped ? .red : .white)
                
                Spacer()
                
                Text(isFlipped ? letter.romanized : letter.original)
                    .font(.custom("LetterDisplay", size: 150))
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right.2")
                    .padding(32)
                    .font(.custom("Arrow", size: 40))
                    .foregroundColor(isFlipped ? .green : .white)
                
            }
            
            Image(systemName: "arrow.2.circlepath.circle.fill").onTapGesture {
                self.isFlipped.toggle()
            }
                .font(.custom("Flip", size: 35))
                .foregroundColor(.black)
        }.background(RoundedRectangle(cornerRadius: 16, style: .continuous)
            .fill(Color.gray)
            .frame(width: 350, height: 450, alignment: .center))
    }
}

struct LessonCardView_Previews: PreviewProvider {
    static var previews: some View {
        LessonCardView(letter: Letter(original: "ㅎ", romanized: "H", sound: .consonant)).previewLayout(.fixed(width: 350, height: 400))
    }
}
