//
//  ViewController.swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 28.02.2022.
//

import UIKit

class ViewController: UIViewController
{

  var text:String?

  private lazy var designMainView = MainScreenView()
  override func loadView(){self.view = designMainView}

  override func viewDidLoad()
  {

    super.viewDidLoad()
    view.backgroundColor  = UIColor(red: 248/255, green: 205/255, blue: 130/255, alpha: 100)
    designMainView.enterPhoneTF.delegate = self

    designMainView.sendDataButton.addTarget(self, action: #selector(buttonterget), for: .touchUpInside)
  }
}


extension ViewController: UITextFieldDelegate
{

  func textFieldDidChangeSelection(_ textField: UITextField)
  {
    text = textField.text
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
  {

    if let touch = touches.first as? UITouch
    {
      view?.endEditing(true)
    }
  }

  @objc func buttonterget()
  {
    GettingCourse.shared?.getCoins(phone: text!, comletion: { [self] coins in
      DispatchQueue.main.async {
        if coins.valid == true{
          designMainView.doneOrNotDone.text = "✅"
          designMainView.imageCountry.image = UIImage(named: "country")
          designMainView.numberTextLabel.text = coins.number
          designMainView.locationNumberLabel.text = coins.location
          designMainView.activityIndicator.stopAnimating()
        }

        if coins.valid == false
        {
          designMainView.doneOrNotDone.text = "👎"
          designMainView.imageCountry.image = UIImage(systemName: "xmark.octagon")
          designMainView.numberTextLabel.text = "error"
          designMainView.locationNumberLabel.text = "error"
          designMainView.activityIndicator.stopAnimating()
        }

      }
    })
  }
}

