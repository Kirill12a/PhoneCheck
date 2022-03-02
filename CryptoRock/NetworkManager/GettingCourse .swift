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
    guard let url = URL(string: "http://apilayer.net/api/validate?access_key=a42407725a7256c4c5ccc300b5ac71a2&number=89116520825&country_code=RU&format=1") else {return}
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      guard let data = data, let response = response else {return}

      do{
        let coins = try JSONDecoder().decode(Coins.self, from: data)
        print("Hl")
        comletion(coins)
      }catch{
        print("\(error.localizedDescription) ======= ")
        print("BB")
      }
    }
    task.resume()
  }
  }

    
  




