//
//  CalculationTests.swift
//  SAUnitTestEXTests
//
//  Created by Mitch Andrade on 7/30/23.
//

import XCTest
@testable import SAUnitTestEX

final class CalculationTests: XCTestCase {

    // The happy path
    
    func testSuccessfulTipCalculation() {
        // Given (Arrange)
        let enteredAmount = 100.00
        let tipSlider = 25.00
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enteredAmount,
                                           with: tipSlider)
        
        
        // Then (Assert)
        XCTAssertEqual(tip, 25)
    }
    
    func testNegativeAmountTipCalculation() {
        // Given (Arrange)
        let enteredAmount = -100.00
        let tipSlider = 25.00
        let calculation = Calculation()
        
        // When (Act)
        let tip = calculation.calculateTip(of: enteredAmount,
                                           with: tipSlider)
        
        
        // Then (Assert)
        XCTAssertNil(tip)
    }
 
}
