//
//  SwipeCharacterModel.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 3/2/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation
struct SwipeCharacterModel: Codable, Identifiable {
    let imageName: String
    let name: String
    let age: Int
    let hobby: String
    let id: Int
}
