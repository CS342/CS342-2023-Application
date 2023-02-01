//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class AnanyaVasireddy: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testAnanyaVasireddyAndInstagramLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Ananya Vasireddy"].tap()
        XCTAssert(app.staticTexts["Ananya"].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["Ananya's Instagram"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
    }
    
    func testAnanyaVasireddyAndSpotifyLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Ananya Vasireddy"].tap()
        XCTAssert(app.staticTexts["Ananya"].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["Raagapella's Spotify"].tap()
        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 10.0))
    }
}
