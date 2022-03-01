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
struct Coin: Codable {
    let id, currency, symbol, name: String
    let logo_url: String
    let price: String
    let price_date, price_timestamp: Date
    let circulating_supply: String
    let max_supply: String?
    let market_cap, market_cap_dominance, num_exchanges, num_pairs: String
    let num_pairs_unmapped: String
    let first_candle, first_trade, first_order_book: Date
    let rank, rank_delta, high: String
    let high_timestamp: Date
    let platform_currency: String?
}

typealias Coins = [Coin]


