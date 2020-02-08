//
//  PictureView.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import SwiftUI

struct PictureView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]),
                                         startPoint: .center, endPoint: .bottom))
                    .clipped()
        )
            .cornerRadius(12.0)
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView(imageName: "Hermionie")
    }
}
