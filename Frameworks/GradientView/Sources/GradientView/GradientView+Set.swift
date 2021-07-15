//Copyright Sander de Koning. All rights reserved.

import UIKit

extension GradientView {
  func set(color: GradientColor, direction: GradientDirection = .vertical, animated: Bool = false) {
    guard let gradientLayer = layer as? CAGradientLayer else {
      return
    }
    
    let newColors = color.cgColors()
    let newStartPoint: CGPoint = {
      switch direction {
      case .horizontal:
        return .init(x: 0.0, y: 0.5)
      case .vertical:
        return .init(x: 0.5, y: 0.0)
      }
    }()
    let newEndPoint: CGPoint = {
      switch direction {
      case .horizontal:
        return .init(x: 1.0, y: 0.5)
      case .vertical:
        return .init(x: 0.5, y: 1.0)
      }
    }()
    
    if animated {
      let colorsAnimation = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.colors))
      colorsAnimation.fromValue = gradientLayer.colors
      colorsAnimation.toValue = newColors

      let startPointAnimation = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.startPoint))
      startPointAnimation.fromValue = gradientLayer.startPoint
      startPointAnimation.toValue = newStartPoint

      let endPointAnimation = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.endPoint))
      endPointAnimation.fromValue = gradientLayer.endPoint
      endPointAnimation.toValue = newEndPoint
      
      animationGroup.animations = [colorsAnimation, startPointAnimation, endPointAnimation]
      gradientLayer.add(animationGroup, forKey: "animationGroup")
    }
    
    gradientLayer.colors = newColors
    gradientLayer.startPoint = newStartPoint
    gradientLayer.endPoint = newEndPoint
  }
}

extension GradientView {
  func setGreenYellowHorizontal(animated: Bool = true) {
    set(color: .init(color1: .green, color2: .yellow), direction: .horizontal, animated: animated)
    tag = 1
  }
  
  func setRedBlueVertical(animated: Bool = true) {
    set(color: .init(color1: .red, color2: .blue), direction: .vertical, animated: animated)
    tag = 0
  }
}
