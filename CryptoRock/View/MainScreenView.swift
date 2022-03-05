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
  
  lazy var sendDataButton: UIButton =
  {
    let button = UIButton(type: .custom)
    button.backgroundColor = .lightGray
    button.setTitle("Нажми", for: .normal)
    button.setTitleColor(.purple, for: .normal)
    return button
  }()
  
  lazy var activityIndicator: UIActivityIndicatorView =
  {
    var active = UIActivityIndicatorView()
    active.startAnimating()
    active.transform = CGAffineTransform(scaleX: 3, y: 3)
    active.color = .red
    return active
  }()
  
  lazy var imageCountry: UIImageView =
  {
    var image = UIImageView()
    return image
  }()
  
  lazy var enterPhoneTF: UITextField =
  {
    var tf = UITextField()
    tf.borderStyle = .roundedRect
    tf.placeholder = "Введи номер для справки"
    tf.keyboardType = .phonePad
    return tf
  }()
  
  lazy var viewForContentView: UIView =
  {
    var view = UIView()
    view.backgroundColor = .red
    view.layer.cornerRadius = 20
    view.backgroundColor = UIColor(red: 35/255, green: 176/255, blue: 189/255, alpha: 100)
    return view
  }()
  
  lazy var numberTextLabel: UILabel =
  {
    let label = UILabel()
    return label
  }()
  
  lazy var locationNumberLabel: UILabel =
  {
    var number = UILabel()
    return number
  }()
  
  lazy var doneOrNotDone: UILabel =
  {
    var doneORdon = UILabel()
    return doneORdon
  }()
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    labelPrefernce()
    phoneNumber()
    enterNumberTextField()
    preferenceView()
    imageCountryPreference()
    doneOrNotDonePreference()
    activityIndicatorPreference()
    buttonPreference()
  }
  
  required init?(coder: NSCoder)
  {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func buttonPreference()
  {
    self.addSubview(sendDataButton)
    sendDataButton.snp.makeConstraints { make in
      make.topMargin.equalTo(viewForContentView.snp_bottomMargin).offset(40)
      make.centerX.equalToSuperview()
      
    }
  }
  
  private func activityIndicatorPreference()
  {
    viewForContentView.addSubview(activityIndicator)
    activityIndicator.snp.makeConstraints { make in
      make.center.equalToSuperview()
    }
  }
  
  
  private func doneOrNotDonePreference()
  {
    viewForContentView.addSubview(doneOrNotDone)
    doneOrNotDone.snp.makeConstraints { make in
      make.centerY.equalTo(viewForContentView.snp_topMargin).offset(20)
      make.centerX.equalToSuperview()
    }
  }
  
  
  private func imageCountryPreference()
  {
    viewForContentView.addSubview(imageCountry)
    imageCountry.snp.makeConstraints { make in
      make.topMargin.equalTo(viewForContentView.snp_topMargin).offset(3)
      make.leftMargin.equalTo(viewForContentView.snp_leftMargin).offset(10)
      make.height.width.equalTo(70)
    }
  }
  
  private func labelPrefernce()
  {
    viewForContentView.addSubview(numberTextLabel)
    numberTextLabel.snp.makeConstraints { make in
      make.center.equalToSuperview()
    }
  }
  
  private func phoneNumber()
  {
    viewForContentView.addSubview(locationNumberLabel)
    locationNumberLabel.snp.makeConstraints { make in
      make.topMargin.equalTo(numberTextLabel.snp_bottomMargin).offset(20)
      make.centerX.equalToSuperview()
    }
  }
  
  
  private func enterNumberTextField()
  {
    self.addSubview(enterPhoneTF)
    enterPhoneTF.snp.makeConstraints { make in
      make.left.right.equalToSuperview().inset(bounds.width  / 2 + 30)
      make.topMargin.equalTo(safeAreaInsets.top).offset(40)
    }
  }
  
  private func preferenceView()
  {
    self.addSubview(viewForContentView)
    viewForContentView.snp.makeConstraints { make in
      make.topMargin.equalTo(enterPhoneTF.snp_bottomMargin).offset(40)
      make.width.height.equalTo(150)
      make.left.right.equalTo(safeAreaInsets).inset(21)
    }
  }
  
}
