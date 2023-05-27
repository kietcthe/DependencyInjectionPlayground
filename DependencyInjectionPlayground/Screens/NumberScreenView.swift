//
//  NumberScreenView.swift
//  DependencyInjectionPlayground
//
//  Created by Kieran Cao on 27/05/2023.
//

import SwiftUI

struct NumberScreenView: View {
  
  @StateObject private var viewModel: NumberScreenViewModel
  
  init(numberGenerator: NumberGenerator) {
    _viewModel = StateObject(
      wrappedValue: NumberScreenViewModel(numberGenerator: numberGenerator)
    )
  }
  
  var body: some View {
    VStack {
      Text(viewModel.number.description)
      Button("Generate New Number") {
        viewModel.getRandomNumber()
      }
    }
    .padding()
  }
}

struct NumberScreenViewPreview: PreviewProvider {
  static var previews: some View {
    NumberScreenView(
      numberGenerator: NumberGenerator()
    )
    .previewLayout(.sizeThatFits)
  }
}



