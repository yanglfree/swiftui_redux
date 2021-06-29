//
//  ThreeDucksAction.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/29.
//

import Foundation

enum ThreeDucksAction {
    case startGame
    case endGame
    case flipCard(UUID)
    case clearSelectedCards
    case unFlipSelectedCards
}
