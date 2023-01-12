//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class ProjectCoachesUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testInstructors() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Nicholas Bernhardt-Lanier"].tap()
        XCTAssert(app.staticTexts["Nicholas Bernhardt-Lanier"].waitForExistence(timeout: 0.5))
        
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Raghav Samavedam"].tap()
        XCTAssert(app.staticTexts["Raghav Samavedam"].waitForExistence(timeout: 0.5))
        
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Varun Shenoy"].tap()
        XCTAssert(app.staticTexts["Varun Shenoy"].waitForExistence(timeout: 0.5))
    }
}
