//Copyright Sander de Koning. All rights reserved.

import UIKit

class CounterEffectTableViewCell: UITableViewCell {
  let label = UILabel()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    selectionStyle = .none
    addLabel()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension CounterEffectTableViewCell {
  func addLabel() {
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.monospacedDigitSystemFont(ofSize: 42, weight: .bold)
    label.textColor = .systemBlue
    label.textAlignment = .center
    addSubview(label)
    
    label.topAnchor.constraint(equalTo: topAnchor).isActive = true
    label.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    label.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    label.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
}

