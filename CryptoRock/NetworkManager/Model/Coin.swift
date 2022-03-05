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
struct Coins: Codable
{
    let valid: Bool
    let number, local_format, international_format, country_prefix: String
    let country_code, country_name, location, carrier: String
}


