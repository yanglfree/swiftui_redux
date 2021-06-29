//
//  Card.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import Foundation

struct Card: Identifiable {
    let id: UUID
    let animal: Animal
    
    let isFlipped: Bool
    
    init(id: UUID = UUID(), animal: Animal, isFlipped: Bool = false) {
        self.id = id
        self.animal = animal
        self.isFlipped = isFlipped
    }
    
}
