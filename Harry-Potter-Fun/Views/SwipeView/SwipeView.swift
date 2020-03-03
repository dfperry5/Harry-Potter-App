//
//  SwipeView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct SwipeView: View {        @State private var offset: CGFloat = 0
    @State private var index = 0
    
    let users: [SwipeCharacterModel]
    let spacing: CGFloat = 10
    
    var body: some View {
        GeometryReader { geometry in
            return ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: self.spacing) {
                    ForEach(self.users) { user in
                        UserView(userModel: user)
                            .frame(width: geometry.size.width)
                    }
                }
            }
            .content.offset(x: self.offset)
            .frame(width: geometry.size.width, alignment: .leading)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        self.offset = value.translation.width - geometry.size.width * CGFloat(self.index)
                    })
                    .onEnded({ value in
                        if -value.predictedEndTranslation.width > geometry.size.width / 2, self.index < self.users.count - 1 {
                            self.index += 1
                        }
                        if value.predictedEndTranslation.width > geometry.size.width / 2, self.index > 0 {
                            self.index -= 1
                        }
                        withAnimation { self.offset = -(geometry.size.width + self.spacing) * CGFloat(self.index) }
                    })
            )
        }
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        
        SwipeView(users: [
            SwipeCharacterModel(imageName: "Hermionie", name: "Hermionie Granger", age: 28, hobby: "Reading", id: 1),
             SwipeCharacterModel(imageName: "RonWeasley", name: "Ron Weasley", age: 28, hobby: "Dumb Shit", id: 2)
        
        
        ])
    }
}
