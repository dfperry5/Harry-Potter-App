//
//  ViewFactory.swift
//  Harry-Potter-Fun
//
//  Created by Dylan Perry on 2/7/20.
//  Copyright © 2020 Dylan Perry. All rights reserved.
//

import Foundation
import SwiftUI

struct ViewFactory {
    
    static func button(_ name: String, renderingMode: Image.TemplateRenderingMode = .original) -> some View {
        Button(action: {}) {
            Image(systemName: name)
                .renderingMode(renderingMode)
        }
    }
}
