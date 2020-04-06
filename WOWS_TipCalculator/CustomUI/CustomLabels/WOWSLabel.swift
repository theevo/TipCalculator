//
//  WOWSLabel.swift
//  WOWS_TipCalculator
//
//  Created by Theo Vora on 4/6/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import UIKit

class WOWSLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateFontTo(fontName: FontNames.smallNewYork)
        self.textColor = .WOWSlabelColor
    }
    
    func updateFontTo(fontName: String) {
      let size = self.font.pointSize
      self.font = UIFont(name: fontName, size: size)!
    }
}
