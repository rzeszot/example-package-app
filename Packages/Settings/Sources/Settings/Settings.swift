import UIKit

public struct Settings {
  public static func build() -> UIViewController {
    let vc = UIViewController()
    vc.view.backgroundColor = .systemPink

    vc.tabBarItem.image = UIImage(systemName: "gear")
    vc.tabBarItem.title = "Settings"

    return vc
  }
}
