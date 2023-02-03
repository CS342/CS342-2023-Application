//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class HamedHekmat: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testHamedAndWikiGame() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        
        app.collectionViews.buttons["Hamed Hekmat"].tap()
        XCTAssert(app.staticTexts["Hamed Hekmat"].waitForExistence(timeout: 0.5))
        
        app.staticTexts["Hamed Hekmat"].swipeUp()
        XCTAssert(app.buttons["Begin your Wikipedia Game journey here!"].waitForExistence(timeout: 0.5))
        app.buttons["Begin your Wikipedia Game journey here!"].tap()
    }
}
