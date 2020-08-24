//
//  AlphabetState.swift
//  Romanize
//
//  Created by Carter Lombardi on 8/22/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation

class AlphabetState {
    var lessonProgress: [LessonState]
    
    init(lessonProgress: [LessonState]) {
        self.lessonProgress = lessonProgress
    }
}

class LessonState {
    var totalActions: Int
    var completedActions: Int
    
    init(totalActions: Int, completedActions: Int = 0) {
        self.totalActions = totalActions
        self.completedActions = completedActions
    }
}
