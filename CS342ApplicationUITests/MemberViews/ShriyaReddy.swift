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
        
        XCTAssert(app.buttons["Introduction"].waitForExistence(timeout: 0.5))
        app.buttons["Introduction"].tap()
        
        app.swipeUp()
        
        XCTAssert(app.buttons["Hobbies"].waitForExistence(timeout: 0.5))
        app.buttons["Hobbies"].tap()
        
        app.swipeUp()
        
        XCTAssert(app.buttons["Home"].waitForExistence(timeout: 0.5))
        app.buttons["Home"].tap()
        
        app.swipeUp()
        
        XCTAssert(app.buttons["LinkedIn"].waitForExistence(timeout: 0.5))
        app.buttons["LinkedIn"].tap()

        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
    }
}
