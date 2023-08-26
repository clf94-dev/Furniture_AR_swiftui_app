//
//  ContentView.swift
//  Furniture_AR_swiftui_app
//
//  Created by Carmen Lucas on 26/8/23.
//

import SwiftUI

struct FurnitureItem: Identifiable, Hashable {
    let id = UUID()
    
    let title: String
    let imageName: String
    let entityName: String
    
}
struct ContentView: View {
    let items: [FurnitureItem]
    
    var body: some View {
        NavigationStack {
            List(items) {item in
                NavigationLink(value: item){
                    HStack{
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width:100, height: 100)
                        Text(item.title)
                            .font(.headline)
                    }
                }.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
            }.navigationTitle("Furniture Preview")
                .navigationDestination(for: FurnitureItem.self) { item in
                    FurniturARViewRepresentable(item: item)
                        .navigationTitle(item.title)
                        .ignoresSafeArea()
                }
        }
    }
}

#Preview {
    ContentView(items: [
        .init(title: "Chair", imageName: "chair", entityName: "chair"),
        .init(title: "Cup", imageName: "cup", entityName: "cup"),
        .init(title: "Gramophone", imageName: "gramophone", entityName: "gramophone"),
        .init(title: "Teapot", imageName: "teapot", entityName: "teapot"),
        .init(title: "Tulip", imageName: "tulip", entityName: "tulip"),
        .init(title: "Stratocaster", imageName: "stratocaster", entityName: "stratocaster"),
        .init(title: "WateringCan", imageName: "wateringcan", entityName: "wateringcan"),
        .init(title: "TV", imageName: "tv", entityName: "tv")
    ])
}
