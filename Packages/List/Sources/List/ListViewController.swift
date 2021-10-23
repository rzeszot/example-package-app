import UIKit

class ListViewController: UIViewController {

  var viewModel: ListViewModel!
  var open: ((List.Item) -> Void)!

  // MARK: -

  var tableView: UITableView!

  override func loadView() {
    tableView = UITableView()
    tableView.backgroundColor = .systemGreen
    tableView.dataSource = self
    tableView.delegate = self

    view = tableView
  }
}

extension ListViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    viewModel.items.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
    let item = viewModel.items[indexPath.row]
    cell.textLabel?.text = item.title
    return cell
  }
}

extension ListViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let item = viewModel.items[indexPath.row]
    self.open(List.Item(title: item.title))
  }
}
