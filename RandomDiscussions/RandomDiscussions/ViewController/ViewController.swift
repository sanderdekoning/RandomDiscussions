//Copyright Sander de Koning. All rights reserved.

import UIKit
import GradientView
import CounterEffectView

class ViewController: UIViewController {
  let gradientViewInteractive = GradientViewInteractive()
  let counterEffectView = CounterEffectView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addViews()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    counterEffectView.spin(animated: false)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    counterEffectView.updateMaskFrame()
  }
}

