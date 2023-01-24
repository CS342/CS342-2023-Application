//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class NatashaKacharia: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testRajPabariAndFunFactView() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Natasha Kacharia"].tap()
        XCTAssert(app.staticTexts["Natasha Kacharia"].waitForExistence(timeout: 0.5))
        
        app.staticTexts["Natasha Kacharia"].swipeUp()
        XCTAssert(app.buttons["Can you guess my favorite color?"].waitForExistence(timeout: 0.5))
        app.buttons["Can you guess my favorite color?"].tap()
        
        app.scrollViews.otherElements.buttons["Increment"].tap()
    }
}
