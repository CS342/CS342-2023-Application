//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class CS342ApplicationUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testNavigationBar() throws {
        let app = XCUIApplication()
        app.launch()

        XCTAssert(app.navigationBars.firstMatch.staticTexts["CS342"].waitForExistence(timeout: 0.5))
    }
}
