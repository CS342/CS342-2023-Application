//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class GriffinSomaratne: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testGriffinSomaratneAndButtons() throws {
        let app = XCUIApplication()
        app.launch()

        app.swipeUp()
        app.swipeUp()
        
        app.collectionViews.buttons["Griffin Somaratne"].tap()
        XCTAssert(app.staticTexts["Griffin Somaratne"].waitForExistence(timeout: 0.5))
        
        app.swipeUp()

        XCTAssert(app.scrollViews.otherElements.buttons["Add me on LinkedIn!"].waitForExistence(timeout: 1.0))
        app.scrollViews.otherElements.buttons["Add me on LinkedIn!"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
        
        
        app.activate()
        
        app.swipeUp()
        
        XCTAssert(app.scrollViews.otherElements.buttons["My favorite song rn"].waitForExistence(timeout: 1.0))
        app.scrollViews.otherElements.buttons["My favorite song rn"].tap()
        
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }
}
