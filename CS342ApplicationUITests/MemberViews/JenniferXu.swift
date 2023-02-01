//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
// Tests for Jennifer Xu view.
//
// Cited:
// https://www.hackingwithswift.com/articles/148/xcode-ui-testing-cheat-sheet
//
import XCTest

class JenniferXu: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }

    // Tests existence of section titles
    func testMainView() throws {
        let app = XCUIApplication()

        app.launch()
        app.swipeUp()
        
        app.collectionViews.buttons["Jennifer Xu"].tap()

        XCTAssert(app.staticTexts["Jennifer Xu"].waitForExistence(timeout: 0.5))
        XCTAssert(app.staticTexts["About Me"].waitForExistence(timeout: 0.5))
    }

    // Tests personal website button
    func testPersonalButton() throws {
        let app = XCUIApplication()
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")

        app.launch()
        app.swipeUp()
        
        app.collectionViews.buttons["Jennifer Xu"].tap()

        app.scrollViews.otherElements.buttons["personal"].tap()
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }

    // Tests Github button
    func testGithubButton() throws {
        let app = XCUIApplication()
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")

        app.launch()
        app.swipeUp()
        
        app.collectionViews.buttons["Jennifer Xu"].tap()

        app.scrollViews.otherElements.buttons["github"].tap()
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }

    // Tests LinkedIn button
    func testLinkedInButton() throws {
        let app = XCUIApplication()
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")

        app.launch()
        app.swipeUp()
        
        app.collectionViews.buttons["Jennifer Xu"].tap()

        app.scrollViews.otherElements.buttons["linkedin"].tap()
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }
}
