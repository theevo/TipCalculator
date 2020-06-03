//
//  WOWS_TipCalculatorUITests.swift
//  WOWS_TipCalculatorUITests
//
//  Created by Theo Vora on 6/2/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import XCTest
//@testable import WOWS_TipCalculator

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

    func testTabAmountStartingValue() {
        let tabAmountTextField = app.textFields["$100.00"]
        
        XCTAssertTrue(tabAmountTextField.exists, "Tab text field doesn't exist.")
        
    }
    
    func testNumPad() {
        
        // 1. given
        
        let tabAmountTextField = app.textFields["$100.00"]

        tabAmountTextField.doubleTap()
        
        let deleteKey = app/*@START_MENU_TOKEN@*/.keys["Delete"]/*[[".keyboards.keys[\"Delete\"]",".keys[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let key = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let doneButton = app.toolbars["Toolbar"].buttons["Done"]
        
        
        // 2. then
        
        XCTAssertTrue(deleteKey.exists, "Delete key doesn't exist.")
        XCTAssertTrue(key.exists, "Number 2 key doesn't exist.")
        XCTAssertTrue(key2.exists, "Number 0 key doesn't exist.")
        XCTAssertTrue(doneButton.exists, "Done button doesn't exist.")
        
    }
        
    func testChangeTabAmount() {
        
        // 1. given
        
        let tabAmountTextField = app.textFields["$100.00"]

        tabAmountTextField.doubleTap()
        
        let deleteKey = app/*@START_MENU_TOKEN@*/.keys["Delete"]/*[[".keyboards.keys[\"Delete\"]",".keys[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let key = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let doneButton = app.toolbars["Toolbar"].buttons["Done"]
        
        // 2. where
        
        deleteKey.tap()
        
        key.tap() // 2
        key2.tap() // 0
        key2.tap() // 0
        expectation(for: NSPredicate(format: "hittable == true"), evaluatedWith: doneButton, handler: nil)
        waitForExpectations(timeout: 15, handler: nil)
        doneButton.tap()
        
        // 3. then
        
        let newTabAmountTextField = app.textFields["$200.00"]
        
        XCTAssertTrue(newTabAmountTextField.exists, "Didn't change value.")
    }
}
