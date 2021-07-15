//Copyright Sander de Koning. All rights reserved.

import UIKit

extension CounterEffectView {
  @objc func tapGestureAction() {
    spin()
  }
  
  func addTapGestureRecognizer() {
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestureAction))
    addGestureRecognizer(tapGesture)
  }
}
