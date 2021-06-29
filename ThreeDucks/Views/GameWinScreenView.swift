//
//  GameWinScreenView.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import SwiftUI

struct GameWinScreenView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 32){
            
            Spacer()
            
            Text("Well Done")
                .font(.title)
                .foregroundColor(.white)
            
            Image("ducks")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
           
            
            Button("Go Again") {
                
            }
            .font(.headline)
            .foregroundColor(.purple)
            .padding()
            .background(Color.white)
            .cornerRadius(40)
            
            Spacer()
            
        }
        .background(Color.purple)
    }
}

struct GameWinScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameWinScreenView()
    }
}
