//
//  GameLogicMiddleware.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/29.
//

import Combine

let gameLogic: Middleware<ThreeDucksState, ThreeDucksAction> = { state, action in
    switch action {
    case .flipCard:
        let selectedCards = state.selectedCards
        if selectedCards.count == 2 {
            if selectedCards[0].animal == selectedCards[1].animal {
                return Just(.clearSelectedCards)
                    .eraseToAnyPublisher()
            } else {
                return Just(.unFlipSelectedCards)
                    .eraseToAnyPublisher()
            }
        }
    default:
        break
    }
    return Empty().eraseToAnyPublisher()
}

