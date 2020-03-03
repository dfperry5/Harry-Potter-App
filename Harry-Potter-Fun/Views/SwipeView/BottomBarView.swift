//
//  BottomBarView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "backward.fill")
            }
            .foregroundColor(.orange)
            .background(
                GeometryReader { geometry in
                    Circle()
                        .offset(x: 2.5)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 12)
                        .frame(width: geometry.size.width * 1.5, height: geometry.size.height * 1.5)
                }
            )
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                   Image(systemName: "xmark.circle.fill")
               }
                .foregroundColor(.red)
                .background(
                    GeometryReader { geometry in
                        Circle().foregroundColor(.white)
                            .frame(width: geometry.size.width * 2, height: geometry.size.height * 2)
                            .shadow(color: .gray, radius: 12)
                    }
            )
            
            Spacer()
            
         Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
              Image(systemName: "checkmark.circle.fill")
          }
            .foregroundColor(.green)
            .background(
                GeometryReader { geometry in
                    Circle()
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 12)
                        .frame(width: geometry.size.width * 2, height: geometry.size.height * 2)
                }
            )
            
            Spacer()
            
             Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "hare.fill")
                    }
                .foregroundColor(.purple)
                .background(
                    GeometryReader { geometry in
                        Circle()
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 12)
                            .frame(width: geometry.size.width * 1.5, height: geometry.size.height * 1.5)
                    }
            )
            Spacer()
        }
        .padding([.leading, .trailing])
        
        
    }
}

struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView()
    }
}
