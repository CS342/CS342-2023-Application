//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class RheaMalhotra: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testRheaMalhotraLinkedinView() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        
        app.collectionViews.buttons["Rhea Malhotra"].tap()
        XCTAssert(app.staticTexts["Rhea Malhotra"].waitForExistence(timeout: 0.5))
        
        app.staticTexts["Rhea Malhotra"].swipeUp()
        XCTAssert(app.buttons["Rhea's Linkedin"].waitForExistence(timeout: 0.5))
        app.buttons["Rhea's Linkedin"].tap()
    }
    
    func testRheaMalhotraGitView() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        
        app.collectionViews.buttons["Rhea Malhotra"].tap()
        XCTAssert(app.staticTexts["Rhea Malhotra"].waitForExistence(timeout: 0.5))
        
        app.staticTexts["Rhea Malhotra"].swipeUp()
        XCTAssert(app.buttons["Rhea's GitHub"].waitForExistence(timeout: 0.5))
        app.buttons["Rhea's GitHub"].tap()
    }
}
