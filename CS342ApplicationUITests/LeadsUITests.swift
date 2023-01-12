//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class LeadsUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testLeads() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Prof. Oliver Aalami, MD"].tap()
        XCTAssert(app.staticTexts["Prof. Oliver Aalami, MD"].waitForExistence(timeout: 0.5))
        
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Prof. Carlos Guestrin, Ph.D."].tap()
        XCTAssert(app.staticTexts["Prof. Carlos Guestrin, Ph.D."].waitForExistence(timeout: 0.5))
    }
}
