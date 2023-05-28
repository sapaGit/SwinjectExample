//
//  SecondViewController.swift
//  SwinjectExample
//
//  Created by Sergey Pavlov on 26.05.2023.
//

import UIKit

final class SecondViewController: UIViewController {

  private let provider: ColorProviding?

  init(provider: ColorProviding?) {
    self.provider = provider
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = provider?.color ?? .black
  }
}
