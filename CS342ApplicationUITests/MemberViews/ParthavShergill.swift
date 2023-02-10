//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class ParthavShergill: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testParthavShergillAndRandomQuoteView() throws {
        let app = XCUIApplication()
        app.launch()

        app.swipeUp()
        app.swipeUp()
        
        app.collectionViews.buttons["Parthav Shergill"].tap()
        XCTAssert(app.staticTexts["Parthav Shergill"].waitForExistence(timeout: 10.0))
        
        app.staticTexts["Parthav Shergill"].swipeUp()
        XCTAssert(app.buttons["Click for a random quote"].waitForExistence(timeout: 10.0))
        app.buttons["Click for a random quote"].tap()
    }
}
