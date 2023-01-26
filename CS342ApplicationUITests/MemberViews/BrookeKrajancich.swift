//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class BrookeKrajancich: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testBrookeKrajancichAndWebsiteLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Brooke Krajancich"].tap()
        XCTAssert(app.staticTexts["Brooke Krajancich"].waitForExistence(timeout: 0.5))
        
        XCTAssert(app.staticTexts["In my spare time, you'll find me:"].waitForExistence(timeout: 0.5))
        XCTAssert(app.staticTexts["🏋🏼‍♀️ lifting heavy things"].waitForExistence(timeout: 0.5))
        XCTAssert(app.staticTexts["🐶 cuddling my pup Maxwell"].waitForExistence(timeout: 0.5))
        XCTAssert(app.staticTexts["🍷 enjoying a glass of wine"].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["Visit my website!"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }
}
