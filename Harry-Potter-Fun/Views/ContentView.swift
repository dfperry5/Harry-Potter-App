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
    
    @State
    var user = UserModel(name: "Dylan", house: nil, favoriteCharacters: [])
    
    @State private var show_modal: Bool = false
    
    var body: some View {
        VStack{
            NavigationView {
                NavigationList(user: self.$user)
            .navigationBarTitle("Welcome, Dylan")
            .navigationBarHidden(false)
            .navigationBarItems(trailing:
                Button( action: {
                    print("Help tapped!")
                    self.show_modal = true
                }){
                    Image(systemName: "person.circle.fill")
                    .resizable()
                }.sheet(isPresented: self.$show_modal) {
                    ProfileView()
                })
            }
            
            
        }
        .onAppear() {
            print("Back in here - \(self.user)")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
