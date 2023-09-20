//
//  ARViewModel.swift
//  PlayARSwiftUI
//
//  Created by Eric Liu on 8/27/23.
//

import Foundation
import RealityKit
import ARKit


class ARViewModel:UIViewController,  ObservableObject, ARSessionDelegate {
    @Published private var model: ARModel = ARModel()
    
    var arView : ARView {
        model.arView
    }
    
    
    func startSessionDelegate(){
        model.arView.session.delegate = self
    }
    
    
    /**
     This is called when new anchors are added to the session.
     
     @param session The session being run.
     @param anchors An array of added anchors.
     */
     func session(_ session: ARSession, didAdd anchors: [ARAnchor]){
        onAnchorUpdated(anchors: anchors)
    }

    
    /**
     This is called when anchors are updated.
     
     @param session The session being run.
     @param anchors An array of updated anchors.
     */
     func session(_ session: ARSession, didUpdate anchors: [ARAnchor]){
         onAnchorUpdated(anchors: anchors)
    }
    
    func onAnchorUpdated(anchors: [ARAnchor]){
        print("ericliu: \(anchors)")
    }
}
