//
//  ARViewModel.swift
//  PlayARSwiftUI
//
//  Created by Eric Liu on 8/27/23.
//

import Foundation
import RealityKit


class ARViewModel: ObservableObject {
    @Published private var model: ARModel = ARModel()
    
    var arView : ARView {
        model.arView
    }
}
