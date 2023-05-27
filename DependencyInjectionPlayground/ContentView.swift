//
//  ContentView.swift
//  DependencyInjectionPlayground
//
//  Created by Kieran Cao on 27/05/2023.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject private var numberGenerator: NumberGenerator
  
  var body: some View {
    NumberScreenView(numberGenerator: numberGenerator)
  }
}


struct ContentViewPreview: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(NumberGenerator())
  }
}
