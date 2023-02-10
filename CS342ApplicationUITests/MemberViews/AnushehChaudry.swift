//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class AnushehChaudry: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testAnushehChaudryAndTwitterLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Anusheh Chaudry"].tap()
        XCTAssert(app.staticTexts["Anusheh Chaudry"].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["@anushehchaudry"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
    }
}
