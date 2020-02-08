//
//  CharacterSwipeView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct CharacterSwipeView: View {
    let users: [UserModel] = [
        UserModel(imageName: "Hermionie", name: "Hermionie Granger", age: 28, hobby: "Reading", id: 1),
         UserModel(imageName: "RonWeasley", name: "Ron Weasley", age: 28, hobby: "Dumb Shit", id: 2)
    ]
    
    var body: some View {
        VStack {
            MyNavigationView()
                .padding(.bottom)
            SwipeView(users: users)
                .padding(.bottom)
            BottomBarView()
        }
        .padding()
    }
}

struct CharacterSwipeView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSwipeView()
    }
}
