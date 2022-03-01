//
//  GettingCourse .swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 28.02.2022.
//

import Alamofire


class GettingCourse
{

  static let shared = GettingCourse()
//  private init?(){}

  func getCoins(comletion: @escaping(Coins)->Void){
    guard let url = URL(string: "https://api.nomics.com/v1/currencies/ticker?key=65d826b99ad9177574292332ff03b21ca80d24b6&ranks=1&interval=id,30d&convert=USD&per-page=10&page=1") else {return}
    let request = URLRequest(url:url)
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      if let data = data, let coins = try? JSONDecoder().decode(Coins.self, from: data) {
        comletion(coins)
      }else{
        print("ПШНХ")
      }
    }
    task.resume()
  }
  }

    
  




