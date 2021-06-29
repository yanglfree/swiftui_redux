//
//  Animal.swift
//  ThreeDucks
//
//  Created by Liang on 2021/6/28.
//

import SwiftUI

enum Animal: String {
    case bat, bear, elephant, horse, monkey, owl, pelican, rabbit, turtle
    case ducks
    
    var image: Image {
        Image(rawValue)
    }
    
}
