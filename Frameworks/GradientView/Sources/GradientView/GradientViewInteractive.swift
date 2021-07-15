//Copyright Sander de Koning. All rights reserved.

import UIKit

public class GradientViewInteractive: UIView {
  let gradientView = GradientView(color: .init(color1: .red, color2: .blue), direction: .vertical)
  let label = UILabel()
  let slider = UISlider()
  
  public init() {
    super.init(frame: .zero)
    translatesAutoresizingMaskIntoConstraints = false

    addViews()
    addTapGestureRecognizer()
    addSliderTargetAction()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
