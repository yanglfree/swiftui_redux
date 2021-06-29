//
//  GameScreenView.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import SwiftUI

struct GameScreenView: View {
    
    var cards: [Card] = []
    
    @EnvironmentObject var store: ThreeDucksStore
    
    var body: some View {
        VStack (alignment: .leading){
            Button{
                withAnimation {
                    store.dispatch(.endGame)
                }
            } label: {
                HStack {
                    Image(systemName: "hand.point.left.fill")
                    Text("Give up")
                }
                .foregroundColor(.purple)
            }
            .padding()
            
            Spacer()
            
            CardGridView(cards: store.state.cards)
            Spacer()
            
            Text("Moves: \(store.state.moves)")
                .font(.subheadline)
                .foregroundColor(.purple)
                .padding()
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}
