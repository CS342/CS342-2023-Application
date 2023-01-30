//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class JenMoore: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testJenMooreAndGalleryAndLinkedInLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        app.collectionViews.buttons["Jen Moore"].tap()
        XCTAssert(app.staticTexts["Jen Moore"].waitForExistence(timeout: 0.5))
        app.staticTexts["Jen Moore"].swipeUp()
        
        // Gallery Test
        app.images.element(boundBy: 2).tap()
        
        XCTAssert(app.staticTexts["Me and my friends in NY this summer!"].waitForExistence(timeout: 0.8))
        app.swipeDown(velocity: .fast)
        XCTAssertFalse(app.staticTexts["Me and my friends in NY this summer!"].waitForExistence(timeout: 0.8))
        
        app.images.element(boundBy: 3).tap()
        
        XCTAssert(app.staticTexts["The cutest dog ever, Riggins!"].waitForExistence(timeout: 0.8))
        app.swipeDown(velocity: .fast)
        XCTAssertFalse(app.staticTexts["The cutest dog ever, Riggins!"].waitForExistence(timeout: 0.8))
        
        // LinkedIn Test
        app.scrollViews.otherElements.buttons["My LinkedIn"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }
}
