//
//  CardBackContentView.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import SwiftUI

struct CardBackContentView: View {
    var body: some View {
        Image("card-back")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct CardBackContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardBackContentView()
    }
}
