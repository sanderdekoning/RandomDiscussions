//Copyright Sander de Koning. All rights reserved.

import Foundation

struct Model: Codable {
  let number: Int
  
  func calculate() -> Int {
    // Perform hypothetical calculation that takes ~150ms
    usleep(150000)
    return number*2
  }
}
