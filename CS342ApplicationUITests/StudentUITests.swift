//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class StudentUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testInstructors() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Shriya Reddy"].tap()
        XCTAssert(app.staticTexts["Shriya Reddy"].waitForExistence(timeout: 0.5))
        
        app.collectionViews.buttons["Information"].tap()
        XCTAssert(app.staticTexts["Information"].waitForExistence(timeout: 0.5))

        app.collectionViews.buttons["Hobbies"].tap()
        XCTAssert(app.staticTexts["Hobbies"].waitForExistence(timeout: 0.5))
        
        app.collectionViews.buttons["Home"].tap()
        XCTAssert(app.staticTexts["Home"].waitForExistence(timeout: 0.5))
    }
}
