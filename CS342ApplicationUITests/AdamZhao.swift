//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest

class AdamZhaoTests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testAdamSubViews() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Adam Zhao"].tap()
        XCTAssert(app.staticTexts["Adam Zhao"].waitForExistence(timeout: 0.5))
        
        app.scrollViews.otherElements.buttons["Photography"].tap()
        
        app.navigationBars.buttons["Adam"].tap()
        
        app.scrollViews.otherElements.buttons["Click for a short performance"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
            
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
        
        app.terminate()
        
        app.launch()
        
        app.collectionViews.buttons["Adam Zhao"].tap()
        XCTAssert(app.staticTexts["Adam Zhao"].waitForExistence(timeout: 0.5))
        app.scrollViews.otherElements.buttons["Contact Me"].tap()
        
        app.otherElements.buttons["LinkedIn"].tap()
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }
}
