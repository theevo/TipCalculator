//
//  TipCalculatorController.swift
//  WOWS_TipCalculator
//
//  Created by Theo Vora on 4/6/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import Foundation

class TipCalculatorController {
    
    // MARK: - Shared Instance
    
    static let shared = TipCalculatorController()
    
    
    // MARK: - Properties
    
    var tipDollarAmountString: String = "$18.00"
    var tabAmountString: String = "$100.00"
    var tipPercentageString: String = "18%"
    
    private var tipDollarAmount: Double = 18.0 {
        didSet {
            tipDollarAmountString = formatAsMoney(tipDollarAmount)
        }
    }
    
    private var tabAmount: Double = 100.0 {
        didSet {
            tipDollarAmount = tabAmount * tipPercentage
            tabAmountString = formatAsMoney(tabAmount)
        }
    }
    
    private var tipPercentage: Double = 0.18 {
        didSet {
            tipDollarAmount = tabAmount * tipPercentage
            tipPercentageString = formatAsPercent(tipPercentage)
        }
    }
    
    
    // MARK: - Helper Functions
    
    func formatAsMoney(_ amount: Double) -> String {
        let moneyFormatter = NumberFormatter()
        moneyFormatter.numberStyle = NumberFormatter.Style.currency
        return moneyFormatter.string(for: amount) ?? ""
    }
    
    func formatAsPercent(_ amount: Double) -> String {
        let percentFormatter = NumberFormatter()
        percentFormatter.numberStyle = NumberFormatter.Style.percent
        percentFormatter.maximumFractionDigits = 1
        
        return percentFormatter.string(for: amount) ?? ""
    }
    
    func updateWithTipPercentString(string: String) {
        guard let multiplier = Double(string.replacingOccurrences(of: "%", with: "")) else { return }
        
        tipPercentage = multiplier / 100.0
    }
    
    func updateWithTabAmountString(string: String) {
        guard let maybeTabAmount = Double(string.replacingOccurrences(of: "$", with: "")) else { return }
        
        tabAmount = maybeTabAmount
    }
    
} // end class
