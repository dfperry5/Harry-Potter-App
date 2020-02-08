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
                self.hpNetworkManager.getRandomHogwartsHouse()
        }
    }
    
}

struct HouseView_Previews: PreviewProvider {
    static var previews: some View {
        HouseView()
    }
}
