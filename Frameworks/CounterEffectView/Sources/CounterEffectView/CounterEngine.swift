//Copyright Sander de Koning. All rights reserved.

import Foundation

struct CounterEngine {
  static func lowestNumber() -> Int {
    return 100
  }
  
  static func highestNumber() -> Int {
    999
  }
  
  static func spinNumber() -> Int {
    return Int.random(in: lowestNumber()...highestNumber())
  }
}
