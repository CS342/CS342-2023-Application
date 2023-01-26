//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class KatieLiu: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testKatieLiu() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Katie Liu"].tap()
        XCTAssert(app.staticTexts["Katie Liu"].waitForExistence(timeout: 0.5))
        
        app.buttons["More About Me"].tap()
        XCTAssert(app.staticTexts["These are..."].waitForExistence(timeout: 0.5))
        
        XCTAssert(app.buttons["Morning Drink"].waitForExistence(timeout: 0.5))
        XCTAssert(app.buttons["City in the US"].waitForExistence(timeout: 0.5))
        XCTAssert(app.buttons["Evening Meal"].waitForExistence(timeout: 0.5))
        
        app.buttons["Morning Drink"].tap()
        
        app.buttons["City in the US"].tap()
    }
}
