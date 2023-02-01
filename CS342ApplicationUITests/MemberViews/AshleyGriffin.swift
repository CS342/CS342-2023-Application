//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class AshleyGriffin: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testAshleyGriffinAndTwitterLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Ashley Griffin, Ph.D."].tap()
        XCTAssert(app.staticTexts["Ashley Griffin, Ph.D."].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["@griffinashleyc"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
    }
}
