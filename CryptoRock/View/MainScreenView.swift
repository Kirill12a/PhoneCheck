//
//  MainScreenView.swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 28.02.2022.
//

import SnapKit
import UIKit


class MainScreenView: UIView, UITextFieldDelegate
{

  lazy var enterPhoneTF: UITextField = {
    var tf = UITextField()
    tf.borderStyle = .roundedRect
    tf.placeholder = "Введи номер для справки"

    tf.delegate = self
    return tf
  }()


  lazy var testText: UILabel = {
    let label = UILabel()
    label.text = "Хай ЗЯБЛС"
    return label
  }()

  lazy var phoneNubmer: UILabel = {
    var number = UILabel()
    number.text = "+7911..."
    return number
  }()
  


  override init(frame: CGRect) {
    super.init(frame: frame)
    labelPrefernce()
    phoneNumber()
    enterNumberTextField()
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

  private func phoneNumber(){
    self.addSubview(phoneNubmer)
    phoneNubmer.snp.makeConstraints { make in
      make.topMargin.equalTo(testText.snp_bottomMargin).offset(20)
      make.centerX.equalToSuperview()
    }
  }


  private func enterNumberTextField(){
    self.addSubview(enterPhoneTF)
    enterPhoneTF.snp.makeConstraints { make in
      make.left.right.equalToSuperview().inset(bounds.width  / 2 + 30)
      make.bottom.equalTo(testText.snp_topMargin).offset(-100)

    }
  }


  /// Поработать с этим 
  
  func textFieldDidEndEditing(_ textField: UITextField) { // крч когда жмякаем на экран
    print("1")
  }

  func textFieldDidChangeSelection(_ textField: UITextField) { // так то можно удалить& типо робит когда мы нажиаем на клавишу
    print("2")
  }
  
}
