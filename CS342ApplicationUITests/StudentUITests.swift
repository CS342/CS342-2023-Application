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
    
    func testLeads() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Anusheh Chaudry"].tap()
        XCTAssert(app.staticTexts["Anusheh Chaudry"].waitForExistence(timeout: 0.5))
    }
}
