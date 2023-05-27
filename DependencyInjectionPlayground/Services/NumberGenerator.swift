//
//  NumberGenerator.swift
//  DependencyInjectionPlayground
//
//  Created by Kieran Cao on 27/05/2023.
//

import Foundation

class NumberGenerator: ObservableObject {
  
  func getRandomNumber() -> Int {
    return Int.random(in: 1...100)
  }
}
