//
//  NumberScreenViewModel.swift
//  DependencyInjectionPlayground
//
//  Created by Kieran Cao on 27/05/2023.
//

import Foundation

class NumberScreenViewModel: ObservableObject {
  private let numberGenerator: NumberGenerator
  
  init(numberGenerator: NumberGenerator) {
    self.numberGenerator = numberGenerator
  }
  
  @Published var number: Int = 0
  
  func getRandomNumber() {
    self.number = numberGenerator.getRandomNumber()
  }
  
}
