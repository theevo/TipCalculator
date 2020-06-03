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

}
