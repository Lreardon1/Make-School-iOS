//
//  CurrencyInfo.swift
//  CurrencyConverter
//
//  Created by Leith Reardon on 7/4/18.
//  Copyright © 2018 Leith Reardon. All rights reserved.
//

import Foundation

struct CurrencyType{
    static let usd = CurrencyType(currencyName: "USD", currencyExchangeRate: 1.00, currencyImage: "America")
    
    static let euro = CurrencyType(currencyName: "EURO", currencyExchangeRate: 0.86, currencyImage: "Europe")
    
    static let yen = CurrencyType(currencyName: "YEN", currencyExchangeRate: 110.48, currencyImage: "China")
    
    static let rupee = CurrencyType(currencyName: "RUPEE", currencyExchangeRate: 68.99, currencyImage: "India")
    
    static let bitcoin = CurrencyType(currencyName: "BITCOIN", currencyExchangeRate: 0.00015, currencyImage: "Ugh")
    
    let currencyName: String
    let currencyExchangeRate: Double
    let currencyImage: String
}
