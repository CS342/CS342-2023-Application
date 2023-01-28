//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class RajPabari: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testRajPabariAndFunFactView() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Raj Pabari"].tap()
        XCTAssert(app.staticTexts["Raj Pabari"].waitForExistence(timeout: 0.5))
        
        app.staticTexts["Raj Pabari"].swipeUp()
        XCTAssert(app.buttons["Learn a random fun fact about Raj"].waitForExistence(timeout: 0.5))
        app.buttons["Learn a random fun fact about Raj"].tap()
    }
}
