//
//  StyleGuide.swift
//  WOWS_TipCalculator
//
//  Created by Theo Vora on 4/6/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import UIKit

extension UIColor {
    static let WOWSbackgroundColor = UIColor(named: "WOWSbackgroundColor")!
    static let WOWSlabelColor = UIColor(named: "WOWSlabelColor")!
    static let WOWStextFieldColor = UIColor(named: "WOWStextFieldColor")!
    static let WOWStipColor = UIColor(named: "WOWStipColor")!
}

struct FontNames {
    static let extraLargeNewYork = "NewYorkExtraLarge-Regular"
    static let mediumNewYork = "NewYorkMedium-Regular"
    static let smallNewYork = "NewYorkSmall-Regular"
    static let appleSymbols = "Apple Symbols"
}

extension UIView {
    
    func addCornerRadius(_ radius: CGFloat = 8) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 2, color: UIColor = .WOWStextFieldColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
