//
//  LessonState.swift
//  Romanize
//
//  Created by Carter Lombardi on 9/3/20.
//  Copyright © 2020 Lombardi AI Corporation. All rights reserved.
//

import Foundation

class LessonState {
    var totalActions: Int
    var completedActions: Int
    
    init(totalActions: Int, completedActions: Int = 0) {
        self.totalActions = totalActions
        self.completedActions = completedActions
    }
}
