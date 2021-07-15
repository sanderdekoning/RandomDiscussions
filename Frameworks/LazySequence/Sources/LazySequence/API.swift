//Copyright Sander de Koning. All rights reserved.

import Foundation

struct API {
  static let shared = API()
}

extension API {
  func models() -> [Model] {
    var models: [Model] = []
    
    for n in 1...25 {
      let model = Model(number: n)
      models.append(model)
    }
    
    return models
  }
}

