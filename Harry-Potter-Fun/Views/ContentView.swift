//
//  ContentView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/6/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject
    var hpNetworkManager = HPNetworkingManager()
    
    @State
    var hasBeenSorted = false

    let noCurrentHouseMessage = "You don't have a house yet. Click Sort!"
    
    var options: [OptionModel] = [
        OptionModel(id: 1, optionDescription: "Get Sorted"),
        OptionModel(id: 2, optionDescription: "Select your favorites"),
        OptionModel(id:3, optionDescription: "View Your Profile")
        
    ]
    
    
    var body: some View {
        NavigationView {
            List(options){ option in
                NavigationLink(destination: CharacterSwipeView()) {
                    HStack{
                        Text("\(option.id)")
                        Text(option.optionDescription)
                    }
                   }
            }
           
        .navigationBarTitle("DP Harry Potter")
        }
        
    }
    
    func getHeadline() -> String {
        if hpNetworkManager.currentHouse.count > 0 {
            return "Your house is: \(hpNetworkManager.currentHouse)"
        } else {
            return noCurrentHouseMessage
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
