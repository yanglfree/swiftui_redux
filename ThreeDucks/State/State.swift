//
//  ThreeDucksState.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import Foundation

struct ThreeDucksState {
    var gameState: GameState = .title
    
    var cards: [Card] = []
    
    var selectedCards: [Card] = []
    var moves: Int = 0
}
