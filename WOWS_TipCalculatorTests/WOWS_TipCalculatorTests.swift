//
//  WOWS_TipCalculatorTests.swift
//  WOWS_TipCalculatorTests
//
//  Created by Theo Vora on 6/2/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

import XCTest
@testable import WOWS_TipCalculator

class WOWS_TipCalculatorTests: XCTestCase {
    
    var sut: TipCalculatorController!

    override func setUpWithError() throws {
        super.setUp()
        sut = TipCalculatorController()
    }

    override func tearDownWithError() throws {
        sut = nil
        super.tearDown()
    }

    func testDefaultAmounts() {
        XCTAssertEqual(sut.tabAmountString, "$100.00", "Starting tab amount did not start off at $100.00.")
        XCTAssertEqual(sut.tipDollarAmountString, "$18.00", "Starting tip dollar amount didn't start off at $18.00.")
        XCTAssertEqual(sut.tipPercentageString, "18%", "Starting tip percentage did not start off at 18%.")
    }
    
    func testChangeInTabAmount() {
        // 1. given
        let newTab = "$200.00"
        
        // 2. when
        sut.updateWithTabAmountString(string: newTab)
        
        // 3. then
        XCTAssertEqual(sut.tipDollarAmountString, "$36.00", "Calculation incorrect when tip is 18% and tab changed to $200.")
    }
    
    func testChangeInTipPercentage() {
        // 1. given
        let newTip = "20%"
        
        // 2. when
        sut.updateWithTipPercentString(string: newTip)
        
        // 3. then
        XCTAssertEqual(sut.tipDollarAmountString, "$20.00", "Calculation incorrect when tab is $100 and tip rate changed to 20%.")
    }

}
