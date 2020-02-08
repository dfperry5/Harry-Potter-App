//
//  UserModel.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation

struct UserModel: Codable, Identifiable {
    let imageName: String
    let name: String
    let age: Int
    let hobby: String
    let id: Int
}
