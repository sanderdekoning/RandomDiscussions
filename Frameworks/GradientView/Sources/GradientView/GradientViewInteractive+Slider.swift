//Copyright Sander de Koning. All rights reserved.

import UIKit

extension GradientViewInteractive {
  @objc func sliderTouchDown(sender: UISlider) {
    guard !gradientView.animating else {
      return
    }

    gradientView.setRedBlueVertical(animated: false)
    gradientView.pauseLayer()
    gradientView.setGreenYellowHorizontal()
  }
  
  @objc func sliderTouchUp(sender: UISlider) {
    sender.setValue(0, animated: true)
    gradientView.layer.timeOffset = 0
    gradientView.setRedBlueVertical(animated: false)
    gradientView.layer.removeAllAnimations()
    gradientView.resumeLayer()
  }
  
  @objc func sliderValueChanged(sender: UISlider) {
    gradientView.layer.timeOffset = CFTimeInterval(sender.value)
  }
  
  func addSliderTargetAction() {
    slider.addTarget(self, action: #selector(sliderValueChanged(sender:)), for: .valueChanged)
    slider.addTarget(self, action: #selector(sliderTouchDown(sender:)), for: .touchDown)
    slider.addTarget(self, action: #selector(sliderTouchUp(sender:)), for: .touchUpInside)
    slider.addTarget(self, action: #selector(sliderTouchUp(sender:)), for: .touchUpOutside)
    slider.addTarget(self, action: #selector(sliderTouchUp(sender:)), for: .touchCancel)
  }
}
