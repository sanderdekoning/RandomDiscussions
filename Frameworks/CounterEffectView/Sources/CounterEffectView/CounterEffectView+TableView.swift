//Copyright Sander de Koning. All rights reserved.

import UIKit

extension CounterEffectView {
  func setUpTableView() {
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.dataSource = self
    tableView.register(CounterEffectTableViewCell.self, forCellReuseIdentifier: "cell")
    tableView.showsVerticalScrollIndicator = false
    tableView.showsHorizontalScrollIndicator = false
    tableView.separatorStyle = .none
    tableView.allowsSelection = false
    tableView.isScrollEnabled = false
    tableView.rowHeight = 58
  }
  
  func addTableView() {
    addSubview(tableView)
    tableView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
}

extension CounterEffectView: UITableViewDataSource {
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            as? CounterEffectTableViewCell else {
      return UITableViewCell()
    }
    
    cell.label.text = "\(indexPath.row + CounterEngine.lowestNumber())"
    return cell
  }
  
  public func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return CounterEngine.highestNumber() - CounterEngine.lowestNumber()
  }
}
