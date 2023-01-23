//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class StudentsUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testStudents() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Raj Pabari"].tap()
        XCTAssert(app.staticTexts["Raj Pabari"].waitForExistence(timeout: 0.5))
        
        app.collectionViews.buttons["Ali Mottaghi"].tap()
        XCTAssert(app.staticTexts["Ali Mottaghi"].waitForExistence(timeout: 0.5))
    }
}
