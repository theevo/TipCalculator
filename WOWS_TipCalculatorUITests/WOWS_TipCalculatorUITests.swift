//
//  WOWS_TipCalculatorUITests.swift
//  WOWS_TipCalculatorUITests
//
//  Created by Theo Vora on 6/2/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import XCTest
@testable import WOWS_TipCalculator

class WOWS_TipCalculatorUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        app.launch()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        app.terminate()
        app = nil
    }

    func testEditingTabAmount() throws {
        // 1. given
        
        let tabAmountTextField = app.textFields["$100.00"]
//        let tabAmountField = app.segmentedControls.textFields["$100.00"]
        let deleteKey = app/*@START_MENU_TOKEN@*/.keys["Delete"]/*[[".keyboards.keys[\"Delete\"]",".keys[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let key = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let doneButton = app.toolbars["Toolbar"].buttons["Done"]
        
        XCTAssertTrue(tabAmountTextField.exists, "Tab text field doesn't exist.")
        
        // 2. then
        
        // double tap?
        tabAmountTextField.tap()
        tabAmountTextField.tap()
        
        deleteKey.tap()
        
        key.tap() // 2
        key2.tap() // 0
        key2.tap() // 0
        
        doneButton.tap()
        
        
        
    }
}
