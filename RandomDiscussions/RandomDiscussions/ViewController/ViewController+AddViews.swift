//Copyright Sander de Koning. All rights reserved.

import UIKit

extension ViewController {
  func addViews() {
    addGradientViewInteractive()
    addCounterEffectView()
  }
}

extension ViewController {
  func addGradientViewInteractive() {
    view.addSubview(gradientViewInteractive)
    addGradientViewInteractiveUIConstraints()
  }
  
  func addGradientViewInteractiveUIConstraints() {
    gradientViewInteractive.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    gradientViewInteractive.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
    gradientViewInteractive.heightAnchor.constraint(equalToConstant: 340).isActive = true
    gradientViewInteractive.widthAnchor.constraint(equalToConstant: 260).isActive = true
  }
}

extension ViewController {
  func addCounterEffectView() {
    view.addSubview(counterEffectView)
    addCounterEffectViewUIConstraints()
    counterEffectView.addMask()
  }
  
  func addCounterEffectViewUIConstraints() {
    counterEffectView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    counterEffectView.topAnchor.constraint(equalTo: gradientViewInteractive.bottomAnchor, constant: 40).isActive = true
    counterEffectView.heightAnchor.constraint(equalToConstant: 130).isActive = true
    counterEffectView.widthAnchor.constraint(equalToConstant: 140).isActive = true
  }
}
