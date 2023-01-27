//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class ShriyaReddy: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testShriyaReddyandButtonsView() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Shriya Reddy"].tap()
        XCTAssert(app.staticTexts["Shriya Reddy"].waitForExistence(timeout: 0.5))
        
        app.staticTexts["Shriya Reddy"].swipeUp()
        app.buttons["Introduction"].tap()
        app.buttons["Hobbies"].tap()
        app.buttons["Home"].tap()
        app.buttons["LinkedIn"].tap()

        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }
}
