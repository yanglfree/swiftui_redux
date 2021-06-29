//
//  ThreeDucksApp.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import SwiftUI

@main
struct ThreeDucksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(
                ThreeDucksStore(
                    initial: ThreeDucksState(),
                    reducer: threeDucksReducer,
                    middlewares: [gameLogic]
                )
            )
        }
    }
}
