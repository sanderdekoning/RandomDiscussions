//Copyright Sander de Koning. All rights reserved.

import UIKit

extension GradientViewInteractive {
  @objc func tapGestureAction(sender: UITapGestureRecognizer) {
    guard !gradientView.animating else {
      gradientView.isPaused() ? gradientView.resumeLayer() : gradientView.pauseLayer()
      return
    }

    if gradientView.tag == 0 {
      gradientView.setGreenYellowHorizontal()
    } else if gradientView.tag == 1 {
      gradientView.setRedBlueVertical()
    }
  }
  
  func addTapGestureRecognizer() {
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGestureAction(sender:)))
    gradientView.addGestureRecognizer(tapGesture)
  }
}
