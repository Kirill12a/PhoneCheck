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

    designMainView.snapBtn.addTarget(self, action: #selector(buttonterget), for: .touchUpInside)
  }
}


extension ViewController: UITextFieldDelegate {



  func textFieldDidChangeSelection(_ textField: UITextField) {
    text = textField.text
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first as? UITouch {
      view?.endEditing(true)
    }
  }

  @objc func buttonterget(){
    GettingCourse.shared.getCoins(phone: text!, comletion: { [self] coins in
      DispatchQueue.main.async {
        if coins.valid == true{
          designMainView.doneOrNotDone.text = "✅"
          designMainView.imageCountry.image = UIImage(named: "country")
          designMainView.testText.text = coins.number
          designMainView.phoneNubmer.text = coins.location
          designMainView.activity.stopAnimating()
        }

        if coins.valid == false{
          print("Hi")

          designMainView.doneOrNotDone.text = "👎"
          designMainView.imageCountry.image = UIImage(systemName: "xmark.octagon")
          designMainView.testText.text = "error"
          designMainView.phoneNubmer.text = "error"
          designMainView.activity.stopAnimating()
        }

      }
    })
  }

  
}

