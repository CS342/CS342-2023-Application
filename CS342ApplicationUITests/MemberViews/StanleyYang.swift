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
        
        app.swipeUp()
        
<<<<<<< HEAD
        XCTAssert(app.collectionViews.buttons["Stanley Yang"].waitForExistence(timeout: 1.0))
        
=======
>>>>>>> b4ba7c09a8a955ecd6945a04b9523c83378c8e02
        app.collectionViews.buttons["Stanley Yang"].tap()
        XCTAssert(app.staticTexts["Stanley Yang"].waitForExistence(timeout: 0.5))
        
        XCTAssert(app.scrollViews.otherElements.buttons["Instagram: @sjayyang"].waitForExistence(timeout: 1.0))
        app.scrollViews.otherElements.buttons["Instagram: @sjayyang"].tap()
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
        
        app.activate()
        
        app.swipeUp()
        
        XCTAssert(app.scrollViews.otherElements.buttons["LinkedIn: Stanley Yang"].waitForExistence(timeout: 1.0))
        app.scrollViews.otherElements.buttons["LinkedIn: Stanley Yang"].tap()
<<<<<<< HEAD
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
=======
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
>>>>>>> b4ba7c09a8a955ecd6945a04b9523c83378c8e02
    }
}
