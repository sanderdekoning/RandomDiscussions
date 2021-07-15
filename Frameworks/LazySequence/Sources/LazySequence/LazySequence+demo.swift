//Copyright Sander de Koning. All rights reserved.

import Foundation

extension LazySequence {
  func demoLazily() {
    let lazilyCalculated = models.lazy.map { $0.calculate() }

    _ = lazilyCalculated[20]
  }
  
  func demoLazilyMultipleReads() {
    let lazilyCalculated = models.lazy.map { $0.calculate() }
    
    for _ in 0...49 {
      _ = lazilyCalculated[20]
    }
  }
}

extension LazySequence {
  func demoNonLazily() {
    let calculated = models.map { $0.calculate() }
    
    _ = calculated[20]
  }
  
  func demoNonLazilyMultipleReads() {
    let calculated = models.map { $0.calculate() }
    
    for _ in 0...49 {
      _ = calculated[20]
    }
  }
}
