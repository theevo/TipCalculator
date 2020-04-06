//
//  TipCalculatorController.swift
//  WOWS_TipCalculator
//
//  Created by Theo Vora on 4/6/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import Foundation

class TipCalculator {
    
    static let shared = TipCalculator()
    
    var tipDollarAmount: Float = 18.0
    var tabAmount: Float = 100.0 {
        didSet {
            tipDollarAmount = tabAmount * tipPercentage
        }
    }
    var tipPercentage: Float = 0.18 {
        didSet {
            tipDollarAmount = tabAmount * tipPercentage
        }
    }
}
