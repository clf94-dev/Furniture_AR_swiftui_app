//
//  FurniturARRepresentable.swift
//  Furniture_AR_swiftui_app
//
//  Created by Carmen Lucas on 26/8/23.
//

import SwiftUI

struct FurniturARViewRepresentable: UIViewRepresentable {
    let item: FurnitureItem
    func makeUIView(context: Context) -> some UIView {
        FurnitureARView(item: item)
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
