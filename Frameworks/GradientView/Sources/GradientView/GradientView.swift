//Copyright Sander de Koning. All rights reserved.

import UIKit

public class GradientView: UIView {
  let animationGroup = CAAnimationGroup()
  private(set) var animating: Bool = false
  
  override public class var layerClass: Swift.AnyClass {
    return CAGradientLayer.self
  }
  
  public init(color: GradientColor, direction: GradientDirection = .vertical) {
    super.init(frame: .zero)
    translatesAutoresizingMaskIntoConstraints = false
    layer.cornerRadius = 32
    layer.masksToBounds = true
    
    animationGroup.delegate = self
    animationGroup.duration = 1
    animationGroup.isRemovedOnCompletion = false
    animationGroup.timingFunction = CAMediaTimingFunction(name: .linear)
    animationGroup.fillMode = .backwards

    set(color: color, direction: direction, animated: false)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension GradientView: CAAnimationDelegate {
  public func animationDidStart(_ anim: CAAnimation) {
    animating = true
  }
  
  public func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
    animating = false
  }
}
