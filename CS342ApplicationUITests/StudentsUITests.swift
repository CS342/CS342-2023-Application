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
    
    func testRaj() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        
        app.collectionViews.buttons["Raj Pabari"].tap()
        XCTAssert(app.staticTexts["Raj Pabari"].waitForExistence(timeout: 0.5))
    }

    func testAli() throws {
        let app = XCUIApplication()
        app.launch()

        app.swipeUp()

        app.collectionViews.buttons["Ali Mottaghi"].tap()
        XCTAssert(app.staticTexts["Ali Mottaghi"].waitForExistence(timeout: 0.5))
    }

    func testRhea() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        
        app.collectionViews.buttons["Rhea Malhotra"].tap()
        XCTAssert(app.staticTexts["Rhea Malhotra"].waitForExistence(timeout: 0.5))
    }
    
    func testHamed() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        
        app.collectionViews.buttons["Hamed Hekmat"].tap()
        XCTAssert(app.staticTexts["Hamed Hekmat"].waitForExistence(timeout: 0.5))
    }
    
    func testShriya() throws {
        let app = XCUIApplication()
        app.launch()

        app.collectionViews.buttons["Shriya Reddy"].tap()
        XCTAssert(app.staticTexts["Shriya Reddy"].waitForExistence(timeout: 0.5))
    }
    
    func testAndy() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        
        app.collectionViews.buttons["Andy Wang"].tap()
        XCTAssert(app.staticTexts["Andy Wang"].waitForExistence(timeout: 0.5))
        
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Griffin Somaratne"].tap()
        XCTAssert(app.staticTexts["Griffin Somaratne"].waitForExistence(timeout: 0.5))
    }
    
    func testAdam() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Adam Zhao"].tap()
        XCTAssert(app.staticTexts["Adam Zhao"].waitForExistence(timeout: 0.5))
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
    
    func testDanielGuo() throws {
        let app = XCUIApplication()
        app.launch()
        app.swipeUp()
        app.swipeUp()
        app.collectionViews.buttons["Daniel Guo"].tap()
        XCTAssert(app.staticTexts["Daniel Guo"].waitForExistence(timeout: 0.5))
    }
    
    func testAlexis() throws {
        let app = XCUIApplication()
        app.launch()

        app.swipeUp()
        app.swipeUp()
        
        app.collectionViews.buttons["Alexis Lowber, MS"].tap()
        XCTAssert(app.staticTexts["Alexis Lowber"].waitForExistence(timeout: 0.5))
    }

    func testJen() throws {
        let app = XCUIApplication()
        app.launch()

        app.swipeUp()
        app.swipeUp()
        
        app.collectionViews.buttons["Jen Moore"].tap()
        XCTAssert(app.staticTexts["Jen Moore"].waitForExistence(timeout: 0.5))
    }
    
    func testJuliaRhee() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        app.swipeUp()

        app.collectionViews.buttons["Julia Rhee"].tap()
        XCTAssert(app.staticTexts["Julia Rhee"].waitForExistence(timeout: 0.5))
    }
    
    func testSidGopisetty() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        app.swipeUp()

        app.collectionViews.buttons["Sid Gopisetty"].tap()
        XCTAssert(app.staticTexts["Sid Gopisetty"].waitForExistence(timeout: 0.5))
    }
}
