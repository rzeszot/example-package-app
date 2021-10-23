import UIKit

public struct List {
  public struct Item {
    public let title: String

    public init(title: String) {
      self.title = title
    }
  }

  public struct Input {
    public let open: (Item) -> Void

    public init(open: @escaping (Item) -> Void) {
      self.open = open
    }
  }

  public static func build(_ input: Input) -> UIViewController {
    let vc = ListViewController()

    vc.viewModel = .animals
    vc.open = input.open

    vc.tabBarItem.image = UIImage(systemName: "list.star")
    vc.tabBarItem.title = "List"

    return vc
  }
}
