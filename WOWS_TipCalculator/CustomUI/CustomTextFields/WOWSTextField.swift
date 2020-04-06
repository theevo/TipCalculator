//
//  WOWSTextField.swift
//  WOWS_TipCalculator
//
//  Created by Theo Vora on 4/6/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import UIKit

class WOWSTextField: UITextField {

    override func awakeFromNib() {
      super.awakeFromNib()
      setUpUI()
    }
    
    func setUpUI() {
        self.addCornerRadius()
        self.addAccentBorder()
    }

}
