//
//  Reducer.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/29.
//

import Foundation

typealias Reducer<State, Action> = (State, Action) -> State

let threeDucksReducer: Reducer<ThreeDucksState, ThreeDucksAction> = { state, action in
    var mutatingState = state
    mutatingState.cards = [
        Card(animal: .bat),
        Card(animal: .bat),
        Card(animal: .ducks),
        Card(animal: .ducks),
        Card(animal: .bear),
        Card(animal: .bear),
        Card(animal: .pelican),
        Card(animal: .pelican),
        Card(animal: .horse),
        Card(animal: .horse),
        Card(animal: .elephant),
        Card(animal: .elephant),
    ].shuffled()
    
    switch action {
    case .startGame:
        mutatingState.gameState = .started
        mutatingState.selectedCards = []
        mutatingState.moves = 0
        
    case .endGame:
        mutatingState.gameState = .title
        
    case .flipCard(let id):
        guard mutatingState.selectedCards.count < 2 else {
            break
        }
        
        guard !mutatingState.selectedCards.contains(where: { $0.id == id } ) else {
            break
        }
        
        var cards = mutatingState.cards
        
        guard let selectedIndex = cards.firstIndex(where: { $0.id == id }) else {
            break
        }
        
        let selectedCard = cards[selectedIndex]
        let flippedCard = Card(id: selectedCard.id, animal: selectedCard.animal, isFlipped: true)
        cards[selectedIndex] = flippedCard
        
        mutatingState.selectedCards.append(selectedCard)
        mutatingState.cards = cards
        
        mutatingState.moves += 1
        
    case .clearSelectedCards:
        mutatingState.selectedCards = []
        
        
    case .unFlipSelectedCards:
        let selectedIDs = mutatingState.selectedCards.map { $0.id }
        
        let cards: [Card] = mutatingState.cards.map { card in
            guard selectedIDs.contains(card.id) else {
                return card
            }
            return Card(id: card.id, animal: card.animal, isFlipped: false)
        }
        
        mutatingState.selectedCards = []
        mutatingState.cards = cards
    }
    return mutatingState
}
