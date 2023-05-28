//
//  Container.swift
//  SwinjectExample
//
//  Created by Sergey Pavlov on 26.05.2023.
//

import Foundation
import Swinject
import UIKit

final class AppContainer {
  static let shared = AppContainer()

  let container = Container()

  private init() {
    container.register(ColorProviding.self) { _ in
      return ColorProvider()
    }
    container.register(SecondViewController.self) { resolver in
      let vc = SecondViewController(provider: resolver.resolve(ColorProviding.self))
      return vc
    }
  }
}
