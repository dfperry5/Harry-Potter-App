//
//  NavigationList.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 3/2/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct NavigationList: View {
    
    @Binding
    var user: UserModel
    
    var body: some View {
        List{
            NavigationLink(destination: HouseView(user: self.$user)) {
                HStack{
                    Text("1")
                    Text("Get Sorted")
                }
           }
            NavigationLink(destination: CharacterSwipeView()) {
                 HStack{
                     Text("2")
                     Text("Select Your Favorite Characters")
                 }
            }
        }
    }
}

//struct NavigationList_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationList(user:  UserModel(name: "Dylan", house: nil, favoriteCharacters: []))
//    }
//}
