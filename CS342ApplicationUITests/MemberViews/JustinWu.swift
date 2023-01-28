//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class JustinWu: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testJustinWuAndLinkedInLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Justin Wu"].tap()
        XCTAssert(app.staticTexts["Justin Wu"].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["LinkedIn"].tap()

        
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
    }

    func testQuizLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Justin Wu"].tap()
        XCTAssert(app.staticTexts["Justin Wu"].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["Take Quiz"].tap()
        
        // Test first question
        let question1 = "What is my favorite food?"
        XCTAssert(app.staticTexts[question1].waitForExistence(timeout: 0.5))
        app.textFields["Enter your answer"].tap()
        app.textFields["Enter your answer"].typeText("Sushi")
        app.buttons["Submit"].tap()
        XCTAssert(app.staticTexts["Correct!"].waitForExistence(timeout: 0.5))
        app.buttons["Next"].tap()

        // Test second question
        let question2 = "What is my favorite hobby?"
        XCTAssert(app.staticTexts[question2].waitForExistence(timeout: 0.5))
        app.textFields["Enter your answer"].tap()
        app.textFields["Enter your answer"].typeText("Sleeping")
        app.buttons["Submit"].tap()
        XCTAssert(app.staticTexts["Correct!"].waitForExistence(timeout: 0.5))
        app.buttons["Next"].tap()

        // Test third question
        let question3 = "What is my favorite book series?"
        XCTAssert(app.staticTexts[question3].waitForExistence(timeout: 0.5))
        app.textFields["Enter your answer"].tap()
        app.textFields["Enter your answer"].typeText("Harry Potter")
        app.buttons["Submit"].tap()
        XCTAssert(app.staticTexts["Correct!"].waitForExistence(timeout: 0.5))
        app.buttons["Next"].tap()

        // Test fourth question
        let question4 = "What is my favorite animal?"
        XCTAssert(app.staticTexts[question4].waitForExistence(timeout: 0.5))
        app.textFields["Enter your answer"].tap()
        app.textFields["Enter your answer"].typeText("Dog")
        app.buttons["Submit"].tap()
        XCTAssert(app.staticTexts["Correct!"].waitForExistence(timeout: 0.5))
        app.buttons["Next"].tap()

        // Test fifth question
        let question5 = "What state am I from?"
        XCTAssert(app.staticTexts[question5].waitForExistence(timeout: 0.5))
        app.textFields["Enter your answer"].tap()
        app.textFields["Enter your answer"].typeText("Ohio")
        app.buttons["Submit"].tap()
        XCTAssert(app.staticTexts["Correct!"].waitForExistence(timeout: 0.5))
        app.buttons["Next"].tap()

        // Test quiz complete screen
        XCTAssert(app.staticTexts["Quiz Complete!"].waitForExistence(timeout: 0.5))
    }
}
