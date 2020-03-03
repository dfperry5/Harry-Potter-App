//
//  UserView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI



struct UserView: View {
  let userModel: SwipeCharacterModel
  
  var body: some View {
      ZStack {
          PictureView(imageName: userModel.imageName)
          NameView(name: userModel.name, age: userModel.age, hobby: userModel.hobby)
      }
      .shadow(radius: 12.0)
      .cornerRadius(12.0)
  }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(
            userModel: SwipeCharacterModel(imageName: "Hermionie", name: "Hermionie Granger", age: 28, hobby: "Reading", id: 1)
        )
    }
}
