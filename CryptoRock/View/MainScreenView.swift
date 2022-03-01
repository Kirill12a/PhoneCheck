//
//  MainScreenView.swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 28.02.2022.
//

import SnapKit
import UIKit


class MainScreenView: UIView
{


  lazy var testText: UILabel = {
    let label = UILabel()
    label.text = "Хай ЗЯБЛС"
    return label
  }()
  


  override init(frame: CGRect) {
    super.init(frame: frame)
labelPrefernce()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }



  private func labelPrefernce()
  {
    self.addSubview(testText)
    testText.snp.makeConstraints { make in
      make.center.equalToSuperview()
    }
  }


  

}
