//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class StudentsUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testStudents() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Raj Pabari"].tap()
        XCTAssert(app.staticTexts["Raj Pabari"].waitForExistence(timeout: 0.5))
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Hamed Hekmat"].tap()
        XCTAssert(app.staticTexts["Hamed Hekmat"].waitForExistence(timeout: 0.5))
        
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Andy Wang"].tap()
        XCTAssert(app.staticTexts["Andy Wang"].waitForExistence(timeout: 0.5))
    }

    func testSarah() throws {
        let app = XCUIApplication()
        app.launch()

        app.collectionViews.buttons["Sarah Barragan"].tap()
        XCTAssert(app.staticTexts["Sarah Barragan"].waitForExistence(timeout: 0.5))
    }

    func testAudrey() throws {
        let app = XCUIApplication()
        app.launch()

        app.collectionViews.buttons["Audrey Lin"].tap()
        XCTAssert(app.staticTexts["Audrey Lin"].waitForExistence(timeout: 0.5))
    }
    
    func testJen() throws {
        let app = XCUIApplication()
        app.launch()

        app.collectionViews.buttons["Jen Moore"].tap()
        XCTAssert(app.staticTexts["Jen Moore"].waitForExistence(timeout: 0.5))
    }
}
