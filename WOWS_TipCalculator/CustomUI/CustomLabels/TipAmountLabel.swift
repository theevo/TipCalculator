//
//  TipAmountLabel.swift
//  WOWS_TipCalculator
//
//  Created by Theo Vora on 4/6/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import UIKit

class TipAmountLabel: WOWSLabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textColor = .WOWStipColor
        updateFontTo(fontName: FontNames.extraLargeNewYork)
    }
}
