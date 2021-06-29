//
//  Score.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import Foundation

struct Score: Comparable, Codable {
    static func < (lhs: Score, rhs: Score) -> Bool {
        lhs.adjustedMoves < rhs.adjustedMoves
    }
    
    let difficulty: DifficultyLevel
    let moves: Int
    
    private var adjustedMoves: Int {
        switch difficulty {
        case .hard:
            return moves
        case .normal:
            return moves * 10
        case .easy:
            return moves * 100
        }
    }
}
