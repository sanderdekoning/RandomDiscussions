//Copyright Sander de Koning. All rights reserved.

import UIKit

public struct GradientColor {
  let color1: UIColor
  let color2: UIColor
  
  func cgColors() -> [CGColor] {
    return [color1.cgColor, color2.cgColor]
  }
}
