//
//  ViewController.swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 28.02.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UISearchBarDelegate
{


  var url = "https://jsonplaceholder.typicode.com/users"

  private lazy var designMainView = MainScreenView()

  override func loadView()
  {
    // дизайн из файла с UIVIEW
    self.view = designMainView
    GettingCourse.shared.getCoins(comletion: { coins in
      print(coins[0].id)
    })
  }
  override func viewDidLoad()
  {

    super.viewDidLoad()
    //    let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=55.897&lon=37.4297&lang=ru&units=metric&appid=6cbbebf9bfff951cf0aa15f5d206017c")!

    view.backgroundColor  = .red
    GettingCourse.shared.getCoins(comletion: { coins in
      print(coins.count)
    })

  }

}

