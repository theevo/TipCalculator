//
//  HeartLabel.swift
//  WOWS_TipCalculator
//
//  Created by Theo Vora on 4/6/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import Foundation

class HeartLabel: WOWSLabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        updateFontTo(fontName: FontNames.appleSymbols)
    }
}
