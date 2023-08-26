//
//  Furniture_AR_swiftui_appApp.swift
//  Furniture_AR_swiftui_app
//
//  Created by Carmen Lucas on 26/8/23.
//

import SwiftUI

@main
struct Furniture_AR_swiftui_appApp: App {
    var body: some Scene {
        WindowGroup {
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
    }
}
