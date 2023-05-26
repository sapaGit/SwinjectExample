//
//  ColorProvider.swift
//  SwinjectExample
//
//  Created by Sergey Pavlov on 26.05.2023.
//

import UIKit
protocol ColorProviding {
  var color: UIColor { get }
}

class ColorProvider: ColorProviding {
  var color: UIColor = {
    let colors: [UIColor] = [
      .lightGray,
      .systemBrown,
      .systemGray,
      .systemMint,
      .systemTeal
    ]
    return colors.randomElement() ?? .red
  }()
}
