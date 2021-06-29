//
//  CardGridView.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import SwiftUI

struct CardGridView: View {
    
    @EnvironmentObject var store: ThreeDucksStore
    
    var cards: [Card]
    
    private let colums = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
    ]
    
    var body: some View {
        LazyVGrid(columns: colums, alignment: .center, spacing: 4, pinnedViews: []){
            ForEach(cards) { card in
                CardView(card: card)
                    .frame(width: nil, height: 80)
                    .onTapGesture {
                        store.dispatch(.flipCard(card.id))
                    }
            }
        }
        .animation(.default)
    }
}

struct CardGridView_Previews: PreviewProvider {
    static var previews: some View {
        let cards = [
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
        CardGridView(cards: cards)
    }
}
