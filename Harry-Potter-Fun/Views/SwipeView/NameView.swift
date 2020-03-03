//
//  NameView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct NameView: View {
     let name: String
      let age: Int
      let hobby: String
      
      var body: some View {
          VStack{
                     Text("\(name), \(age)")
                         .font(.title)
                         .fontWeight(.semibold)
                        .foregroundColor(.orange)
                     Text(hobby)
                         .font(.system(size: 16))
                         .fontWeight(.regular)
                         .foregroundColor(.orange)
                 }
                 .padding()
      }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView(  name: "Dylan Perry",
                  age: 26,
                  hobby: "Coding")
    }
}
