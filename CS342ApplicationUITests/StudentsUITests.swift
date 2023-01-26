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
    
    func testLeads() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Raj Pabari"].tap()
        XCTAssert(app.staticTexts["Raj Pabari"].waitForExistence(timeout: 0.5))
    
        app.launch()
        
        app.collectionViews.buttons["Griffin Somaratne"].tap()
        XCTAssert(app.staticTexts["Griffin Somaratne"].waitForExistence(timeout: 0.5))
    }
}
