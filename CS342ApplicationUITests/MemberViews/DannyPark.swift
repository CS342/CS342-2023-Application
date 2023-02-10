//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class DannyPark: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testDannyPark() throws {
        let app = XCUIApplication()
        app.launch()

        app.swipeUp()
        app.swipeUp()

        app.collectionViews.buttons["Danny Park"].tap()
        XCTAssert(app.staticTexts["Danny Park"].waitForExistence(timeout: 0.5))
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        app.scrollViews.otherElements.buttons["LinkedIn"].tap()
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
        
        app.activate()
        
        app.scrollViews.otherElements.buttons["WCA"].tap()
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
    }
}
