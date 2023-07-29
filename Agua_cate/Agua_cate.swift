//
//  Agua_cateApp.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import SwiftUI

@main
struct Agua_cateApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
