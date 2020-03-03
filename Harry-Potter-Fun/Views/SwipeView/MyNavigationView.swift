//
//  MyNavigationView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: "person.fill")
            Spacer()
            Image(systemName: "flame.fill")
            Spacer()
            Image(systemName: "message.circle.fill")
            Spacer()
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
