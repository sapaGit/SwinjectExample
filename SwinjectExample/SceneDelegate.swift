//
//  SceneDelegate.swift
//  SwinjectExample
//
//  Created by Sergey Pavlov on 26.05.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      guard let windowScene = (scene as? UIWindowScene) else { return }
      window = UIWindow(windowScene: windowScene)
      window?.makeKeyAndVisible()
      window?.rootViewController = UINavigationController(rootViewController: ViewController())
    }

}

