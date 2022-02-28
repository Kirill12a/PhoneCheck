//
//  ViewController.swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 28.02.2022.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate
{

  private lazy var designMainView = MainScreenView()

  override func loadView()
  {

    self.view = designMainView
  }
  override func viewDidLoad()
  {

    super.viewDidLoad()
    view.backgroundColor  = .red
  }

}

