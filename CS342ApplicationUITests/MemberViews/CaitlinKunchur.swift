//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class CaitlinKunchur: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testCaitlinKunchur() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Caitlin Kunchur"].tap()
        XCTAssert(app.staticTexts["Caitlin Kunchur"].waitForExistence(timeout: 0.5))

//        app.scrollViews.otherElements.buttons["Instagram"].tap()
//        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
//        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))

    }
}
