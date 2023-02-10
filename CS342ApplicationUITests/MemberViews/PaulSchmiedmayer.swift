//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class PaulSchmiedmayer: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testPaulSchmiedmayerAndTwitterLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Paul Schmiedmayer, Ph.D."].tap()
        XCTAssert(app.staticTexts["Paul Schmiedmayer, Ph.D."].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["@PSchmiedmayer"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
    }
}
