//
//  DependencyInjectionPlaygroundApp.swift
//  DependencyInjectionPlayground
//
//  Created by Kieran Cao on 27/05/2023.
//

import SwiftUI

@main
struct DependencyInjectionPlaygroundApp: App {
  @StateObject private var numberGenerator = NumberGenerator()
  
    var body: some Scene {
        WindowGroup {
          ContentView()
            .environmentObject(numberGenerator)
        }
    }
}
