//
//  Blood_cells_ARApp.swift
//  Blood cells AR
//
//  Created by André  Lucas on 27/12/22.
//

import SwiftUI
import ARKit



@main
struct Blood_cells_ARApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
        
        WindowGroup(id: "teste") {
            EarthView()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.8, height: 0.8, depth: 0.8, in: .meters)
    }
}



