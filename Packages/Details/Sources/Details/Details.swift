import UIKit

public struct Details {
  public static func build(_ input: DetailsInput) -> UIViewController {
    let vc = DetailsViewController()
    vc.viewModel = DetailsViewModel(input)
    return vc
  }
}
