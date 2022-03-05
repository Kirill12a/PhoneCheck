//
//  GettingCourse .swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 28.02.2022.
//

import Alamofire


class GettingCourse
{

  private var apiKEY = "f9ebde7c49a49f220e740c12ab2e41ea"

  static let shared = GettingCourse()
  private init?(){}

  func getCoins(phone:String ,comletion: @escaping(Coins)->Void)
  {
    guard let url = URL(string: "http://apilayer.net/api/validate?access_key=\(apiKEY)&number=\(phone)&format=1") else {return}
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      guard let data = data else {return}
      do{
        let coins = try JSONDecoder().decode(Coins.self, from: data)
        comletion(coins)
      }catch{
        print("\(error.localizedDescription)")
      }
    }
    task.resume()
  }
}







