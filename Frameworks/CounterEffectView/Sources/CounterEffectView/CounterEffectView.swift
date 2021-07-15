//Copyright Sander de Koning. All rights reserved.

import UIKit

public class CounterEffectView: UIView {
  let tableView = UITableView()
  private var maskLayer: CAGradientLayer?
  
  private(set) public var spunNumber = CounterEngine.spinNumber()
  
  public init() {
    super.init(frame: .zero)
    translatesAutoresizingMaskIntoConstraints = false
    
    setUpTableView()
    addTableView()
    addTapGestureRecognizer()
  }
  
  public func addMask() {
    maskLayer = CAGradientLayer()
    maskLayer?.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
    maskLayer?.locations = [0, 0.45, 0.55, 1]
    layer.mask = maskLayer
  }
  
  public func updateMaskFrame() {
    maskLayer?.frame = tableView.bounds
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
