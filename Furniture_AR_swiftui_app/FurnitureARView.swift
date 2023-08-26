//
//  FurnitureARView.swift
//  Furniture_AR_swiftui_app
//
//  Created by Carmen Lucas on 26/8/23.
//

import ARKit
import SwiftUI
import RealityKit

class FurnitureARView: ARView {
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
    }
    required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init () {
        self.init(frame: UIScreen.main.bounds)
    }
}