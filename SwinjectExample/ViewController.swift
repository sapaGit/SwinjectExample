//
//  ViewController.swift
//  SwinjectExample
//
//  Created by Sergey Pavlov on 26.05.2023.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {

  private lazy var goToSecondVCButton = UIButton().then {
    $0.setTitle("Go to second", for: .normal)
    $0.addTarget(self, action: #selector(goToSecondTapped), for: .touchUpInside)
    $0.backgroundColor = .lightGray
    $0.layer.cornerRadius = 10
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    setupInterface()
    setupConstraints()
  }

  private func setupInterface() {
    view.backgroundColor = .white
    view.addSubview(goToSecondVCButton)
  }

  private func setupConstraints() {
    goToSecondVCButton.snp.makeConstraints {
      $0.center.equalToSuperview()
      $0.width.equalTo(150)
    }
  }

  @objc private func goToSecondTapped() {
    guard let vc = AppContainer.shared.container.resolve(SecondViewController.self) else { return }
    navigationController?.pushViewController(vc, animated: true)
  }
}

