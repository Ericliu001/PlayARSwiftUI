//
//  ARModel.swift
//  PlayARSwiftUI
//
//  Created by Eric Liu on 8/27/23.
//

import Foundation
import RealityKit
import ARKit

struct ARModel {
    private(set) var arView : ARView
    let faceTrackingConfig = ARFaceTrackingConfiguration()
    
    init() {
        self.arView = ARView(frame: .zero)
        arView.session.run(faceTrackingConfig)
    }
}
