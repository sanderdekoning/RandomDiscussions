//Copyright Sander de Koning. All rights reserved.

import UIKit

extension GradientView {
  func isPaused() -> Bool {
    return layer.speed == 0
  }
  
  func pauseLayer() {
    let pausedTime = layer.convertTime(CACurrentMediaTime(), from: nil)
    layer.speed = 0
    layer.timeOffset = pausedTime
  }
  
  func resumeLayer() {
    let pausedTime = layer.convertTime(CACurrentMediaTime(), from: nil)
    layer.speed = 1
    layer.timeOffset = 0
    layer.beginTime = 0
    let timeSincePause = layer.convertTime(CACurrentMediaTime(), from: nil) - pausedTime
    layer.beginTime = timeSincePause
  }
}
