//
//  Coinn.swift
//  CryptoRock
//
//  Created by Kirill Drozdov on 01.03.2022.
//

import Foundation


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coins = try? newJSONDecoder().decode(Coins.self, from: jsonData)

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let coins = try? newJSONDecoder().decode(Coins.self, from: jsonData)

import Foundation

// MARK: - Coin
struct Coins: Codable {
  let valid: Bool
  let number, local_format: String
  let international_format: String
let country_prefix: String
  let country_code: String
  let country_name: String
  let locatio: String
  let carrier: String
  let line_type: String

}


