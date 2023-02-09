//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class DanielGuo: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testDanielGuoInstagram() throws {
        let app = XCUIApplication()
        app.launch()
        app.swipeUp()
        
        app.collectionViews.buttons["Daniel Guo"].tap()
        XCTAssert(app.staticTexts["Daniel Guo"].waitForExistence(timeout: 0.5))
        
        app.scrollViews.otherElements.buttons["Tap for Instagram: @dan_guo_"].tap()
    }
}
