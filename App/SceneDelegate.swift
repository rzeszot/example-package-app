import UIKit
import List
import Details
import Settings

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let scene = (scene as? UIWindowScene) else { return }

    let list = UINavigationController()
    list.viewControllers = [
      List.build(.init(open: { item in
        let vc = Details.build(.init(title: item.title))
        list.show(vc, sender: nil)
      }))
    ]

    let tab = UITabBarController()
    tab.tabBar.scrollEdgeAppearance = tab.tabBar.standardAppearance
    tab.viewControllers = [
      list,
      Settings.build()
    ]

    let window = UIWindow(windowScene: scene)
    window.rootViewController = tab
    window.makeKeyAndVisible()

    self.window = window
  }

}
