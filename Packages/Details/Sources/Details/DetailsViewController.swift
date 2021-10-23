import UIKit

class DetailsViewController: UIViewController {

  // MARK: -

  var viewModel: DetailsViewModel!

  // MARK: -

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemYellow
    titleLabel.text = viewModel.title
  }

  // MARK: -

  lazy var titleLabel: UILabel = {
    let label = UILabel()
    view.addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
    return label
  }()

}
