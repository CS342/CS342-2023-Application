//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class SherryXie: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testSherryXieAndView() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Sherry Xie"].tap()
        XCTAssert(app.staticTexts["Sherry Xie"].waitForExistence(timeout: 0.5))

        app.buttons["Check out the places I love!"].tap()
        app.buttons["Next"].tap()
        app.buttons["Next"].tap()
        app.buttons["Go back to my home page"].tap()
    }
}
