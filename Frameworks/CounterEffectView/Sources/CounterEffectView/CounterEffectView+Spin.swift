//Copyright Sander de Koning. All rights reserved.

import UIKit

extension CounterEffectView {
  public func spin(animated: Bool = true) {
    let result = CounterEngine.spinNumber()
    let spunRow = result - CounterEngine.lowestNumber()

    tableView.scrollToRow(at: IndexPath(row: spunRow, section: 0), at: .middle, animated: animated)
  }
}
