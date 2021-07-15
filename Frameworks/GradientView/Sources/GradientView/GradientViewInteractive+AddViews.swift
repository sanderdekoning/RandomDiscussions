//Copyright Sander de Koning. All rights reserved.

import UIKit

extension GradientViewInteractive {
  func addViews() {
    slider.translatesAutoresizingMaskIntoConstraints = false
    addSubview(slider)
    addSliderUIConstraints()
    
    label.translatesAutoresizingMaskIntoConstraints = false
    addSubview(label)
    addLabelUIConstraints()
    label.numberOfLines = 2
    label.textAlignment = .center
    label.font = UIFont.monospacedSystemFont(ofSize: 12, weight: .bold)
    label.text = NSLocalizedString("Tap gradient to animate transition.\n Use slider to bend time!", comment: "")
    
    addSubview(gradientView)
    addGradientViewUIConstraints()
  }
  
  func addSliderUIConstraints() {
    slider.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    slider.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    slider.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
  
  func addLabelUIConstraints() {
    label.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    label.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    label.bottomAnchor.constraint(equalTo: slider.topAnchor, constant: -20).isActive = true
  }
  
  func addGradientViewUIConstraints() {
    gradientView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    gradientView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    gradientView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    gradientView.bottomAnchor.constraint(equalTo: label.topAnchor, constant: -20).isActive = true
  }
}
