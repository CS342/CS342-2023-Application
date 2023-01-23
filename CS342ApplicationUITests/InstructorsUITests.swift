//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class InstructorsUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testInstructors() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Paul Schmiedmayer, Ph.D."].tap()
        XCTAssert(app.staticTexts["Paul Schmiedmayer, Ph.D."].waitForExistence(timeout: 0.5))
        
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Vishnu Ravi, MD"].tap()
        XCTAssert(app.staticTexts["Vishnu 👋"].waitForExistence(timeout: 0.5))
        
        app.collectionViews.buttons["Brooke Krajancich"].tap()
        XCTAssert(app.staticTexts["Brooke"].waitForExistence(timeout: 0.5))
    }
}
