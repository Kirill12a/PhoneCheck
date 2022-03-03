//
//  ViewController.swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 28.02.2022.
//

import UIKit

class ViewController: UIViewController
{


  private lazy var designMainView = MainScreenView()
  override func loadView(){self.view = designMainView}

  override func viewDidLoad()
  {

    super.viewDidLoad()
    view.backgroundColor  = .purple

    GettingCourse.shared.getCoins(comletion: { [self] coins in
      DispatchQueue.main.async {
        print(coins.country_name)
        designMainView.testText.text = coins.country_name
      }
     
    })

  }
  //  override func viewWillAppear(_ animated: Bool) {}
}


extension ViewController: UITextFieldDelegate {

  func textFieldDidEndEditing(_ textField: UITextField) {
    print("Hi")
  }

  func textFieldDidChangeSelection(_ textField: UITextField) {
    print("Hello")
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first as? UITouch {
      view?.endEditing(true)
    }
  }

  
}

