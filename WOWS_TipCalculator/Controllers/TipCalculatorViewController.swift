//
//  TipCalculatorViewController.swift
//  WOWS_TipCalculator
//
//  Created by Theo Vora on 4/6/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tabAmountTextField: TabTextField!
    @IBOutlet weak var tipPercentTextField: TipTextField!
    @IBOutlet weak var tipThisAmountLabel: TipAmountLabel!
    
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
        updateValues()
    }
    
    
    // MARK: - Helper Functions
    
    func updateValues() {
        tabAmountTextField.text = TipCalculatorController.shared.tabAmountString
        tipPercentTextField.text = TipCalculatorController.shared.tipPercentageString
        tipThisAmountLabel.text = TipCalculatorController.shared.tipDollarAmountString
    }
    
    
    func setupTextFields() {
        // create [Done] button for tip NumPad
        let tipToolbar = UIToolbar(frame: CGRect(origin: .zero,
                                                 size: .init(width: view.frame.size.width, height: 30)))
        let tipDoneButton = UIBarButtonItem(title: "Done", style: .done, target: self,
                                            action: #selector(tipDoneButtonAction))
        let emptySpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                         target: nil, action: nil)
        tipToolbar.setItems([emptySpace, tipDoneButton], animated: false)
        tipToolbar.sizeToFit()
        tipPercentTextField.inputAccessoryView = tipToolbar
        
        
        // create [Done] button for tab NumPad
        let tabToolbar = UIToolbar(frame: CGRect(origin: .zero,
                                                 size: .init(width: view.frame.size.width, height: 30)))
        let tabDoneButton = UIBarButtonItem(title: "Done", style: .done, target: self,
                                            action: #selector(tabDoneButtonAction))
        tabToolbar.setItems([emptySpace, tabDoneButton], animated: false)
        tabToolbar.sizeToFit()
        tabAmountTextField.inputAccessoryView = tabToolbar
    }
    
    @objc func tipDoneButtonAction() {
        self.view.endEditing(true)
        let tipPercent = tipPercentTextField.text ?? ""
        TipCalculatorController.shared.updateWithTipPercentString(string: tipPercent)
        updateValues()
    }
    
    @objc func tabDoneButtonAction() {
        self.view.endEditing(true)
        let tabAmount = tabAmountTextField.text ?? ""
        TipCalculatorController.shared.updateWithTabAmountString(string: tabAmount)
        updateValues()
    }
}
