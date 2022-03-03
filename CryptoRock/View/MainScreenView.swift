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

  lazy var snapBtn: UIButton = {
    let button = UIButton(type: .custom)
    button.backgroundColor = .lightGray
    button.setTitle("Нажми", for: .normal)
    button.setTitleColor(.purple, for: .normal)
    return button
  }()

  lazy var activity: UIActivityIndicatorView = {
    var active = UIActivityIndicatorView()
    active.startAnimating()
    active.transform = CGAffineTransform(scaleX: 3, y: 3)
    active.color = .red
    return active
  }()

  lazy var imageCountry: UIImageView = {
    var image = UIImageView()
    return image
  }()

  lazy var enterPhoneTF: UITextField = {
    var tf = UITextField()
    tf.borderStyle = .roundedRect
    tf.placeholder = "Введи номер для справки"
    tf.keyboardType = .phonePad
    return tf
  }()

  lazy var testView: UIView = {
    var view = UIView()
    view.backgroundColor = .red
    view.layer.cornerRadius = 20
    view.backgroundColor = UIColor(red: 35/255, green: 176/255, blue: 189/255, alpha: 100)
    return view
  }()




  lazy var testText: UILabel = {
    let label = UILabel()
    return label
  }()

  lazy var phoneNubmer: UILabel = {
    var number = UILabel()
    return number
  }()

  lazy var doneOrNotDone: UILabel = {
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

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func buttonPreference(){
    self.addSubview(snapBtn)
    snapBtn.snp.makeConstraints { make in
      make.topMargin.equalTo(testView.snp_bottomMargin).offset(40)
      make.centerX.equalToSuperview()
      
    }
  }

  private func activityIndicatorPreference(){
    testView.addSubview(activity)
    activity.snp.makeConstraints { make in
      make.center.equalToSuperview()
    }
  }


  private func doneOrNotDonePreference(){
    testView.addSubview(doneOrNotDone)
    doneOrNotDone.snp.makeConstraints { make in
      make.centerY.equalTo(testView.snp_topMargin).offset(20)
      make.centerX.equalToSuperview()
    }
  }


  private func imageCountryPreference(){
    testView.addSubview(imageCountry)
    imageCountry.snp.makeConstraints { make in
      make.topMargin.equalTo(testView.snp_topMargin).offset(3)
      make.leftMargin.equalTo(testView.snp_leftMargin).offset(10)
      make.height.width.equalTo(70)
    }
  }

  private func labelPrefernce()
  {
    testView.addSubview(testText)
    testText.snp.makeConstraints { make in
      make.center.equalToSuperview()
    }
  }

  private func phoneNumber(){
    testView.addSubview(phoneNubmer)
    phoneNubmer.snp.makeConstraints { make in
      make.topMargin.equalTo(testText.snp_bottomMargin).offset(20)
      make.centerX.equalToSuperview()
    }
  }


  private func enterNumberTextField(){
    self.addSubview(enterPhoneTF)
    enterPhoneTF.snp.makeConstraints { make in
      make.left.right.equalToSuperview().inset(bounds.width  / 2 + 30)
      make.topMargin.equalTo(safeAreaInsets.top).offset(40)
    }
  }

  private func preferenceView(){
    self.addSubview(testView)
    testView.snp.makeConstraints { make in
      make.topMargin.equalTo(enterPhoneTF.snp_bottomMargin).offset(40)
      make.width.height.equalTo(150)
      make.left.right.equalTo(safeAreaInsets).inset(21)
    }
  }

}
