//
//  HouseView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI



struct HouseView: View {
    
    @ObservedObject
    var hpNetworkManager = HPNetworkingManager()
    
    @Binding var user: UserModel
    
    var body: some View {
        VStack{
            Image(hpNetworkManager.currentHouse)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
             Text("Your house is: \(hpNetworkManager.currentHouse)")
                .font(.title)
                .fontWeight(.bold)
        }
        .onAppear {
            if let currentHouse = self.user.house {
                print(currentHouse)
                self.hpNetworkManager.currentHouse = currentHouse
            } else {
                self.hpNetworkManager.getRandomHogwartsHouse()
                print(self.hpNetworkManager.currentHouse)
                self.user.house = self.hpNetworkManager.currentHouse
            }
               
        }
    }
    
    
}

//struct HouseView_Previews: PreviewProvider {
//    static var previews: some View {
//        var user: UserModel = UserModel(name: "Dylan", house: nil, favoriteCharacters: [])
//        HouseView(user)
//    }
//}
