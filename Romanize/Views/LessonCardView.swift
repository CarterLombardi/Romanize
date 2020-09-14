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
        GeometryReader { geometry in
            VStack {
                HStack {
                    Image(systemName: "chevron.left.2")
                        .padding(32)
                        .font(.custom("Arrow", size: 40))
                        .foregroundColor(self.isFlipped ? .red : .gray)
                    
                    Spacer()
                    
                    Text(self.isFlipped ? self.letter.romanized : self.letter.original)
                        .font(.custom("LetterDisplay", size: 150))
                        .foregroundColor(.white)
                        .minimumScaleFactor(0.1)
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right.2")
                        .padding(32)
                        .font(.custom("Arrow", size: 40))
                        .foregroundColor(self.isFlipped ? .green : .gray)
                    
                }
                
                
                Image(systemName: "arrow.2.circlepath.circle.fill").onTapGesture {
                    self.isFlipped.toggle()
                }.foregroundColor(Color.white)
                    .font(.custom("Flip", size: 35))
                    .foregroundColor(.black)
                
            }.background(RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color(red: 0.1, green: 0.1, blue: 0.1))
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center))
                .onTapGesture {
                    self.isFlipped.toggle()
            }
        }
    }
}

struct LessonCardView_Previews: PreviewProvider {
    static var previews: some View {
        LessonCardView(letter: Letter(original: "ㅎ", romanized: "H", sound: .consonant)).previewLayout(.fixed(width: 350, height: 400))
    }
}
