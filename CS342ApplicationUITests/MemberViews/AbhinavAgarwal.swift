//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class AbhinavAgarwal: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testAbhinavAgarwalAndLinkedInLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        
        app.collectionViews.buttons["Abhinav Agarwal"].tap()
        XCTAssert(app.staticTexts["Abhinav Agarwal"].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["LinkedIn"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }
}
