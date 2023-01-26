//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class AndyWang: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testAndyWangAndyHobbies() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Andy Wang"].tap()
        XCTAssert(app.staticTexts["Andy Wang"].waitForExistence(timeout: 0.5))

        app.staticTexts["Andy Wang"].swipeUp()
        app.buttons["Click to see what I do for fun!"].tap()
        XCTAssert(app.staticTexts["My Hobbies!"].waitForExistence(timeout: 0.5))
    }
}
