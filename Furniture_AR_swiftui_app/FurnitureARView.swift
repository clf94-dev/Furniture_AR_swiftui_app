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
    
    convenience init (item: FurnitureItem) {
        self.init(frame: UIScreen.main.bounds)
        
        let anchor = AnchorEntity(.plane(.horizontal, classification: .table, minimumBounds: .zero))
        guard let entity = try? Entity.load(named: item.entityName) else {
            fatalError("Failed to load entity named \(item.entityName)")
        }
        
        let parentEntity = ModelEntity()
        parentEntity.addChild(entity)
        
        anchor.addChild(parentEntity)
        scene.addAnchor(anchor)
        
        let bounds = entity.visualBounds(relativeTo: parentEntity)
        parentEntity.collision = CollisionComponent(shapes: [
            ShapeResource.generateBox(size: bounds.extents).offsetBy(translation: bounds.center)])
        
        installGestures([.rotation, .scale, .translation],for: parentEntity)
    }
}
