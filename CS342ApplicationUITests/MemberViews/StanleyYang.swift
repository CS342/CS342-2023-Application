//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class StanleyYang: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testStanleyYangLinks() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Stanley Yang"].tap()
        XCTAssert(app.staticTexts["Stanley Yang"].waitForExistence(timeout: 0.5))
        
        app.scrollViews.otherElements.buttons["Instagram: @sjayyang"].tap()
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
        
        app.activate()
        
        app.swipeUp()
        
        app.scrollViews.otherElements.buttons["LinkedIn: Stanley Yang"].tap()
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))

        //app.activate()
        
        //app.swipeUp()
        
        //app.scrollViews.otherElements.buttons["Github: @sjayyang"].tap()
        //XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }
}
