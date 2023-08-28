//
//  ARModel.swift
//  PlayARSwiftUI
//
//  Created by Eric Liu on 8/27/23.
//

import Foundation
import RealityKit

struct ARModel {
    private(set) var arView : ARView
    
    init() {
        self.arView = ARView(frame: .zero)
    }
}
