//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class SonyaJin: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }

    func testSonya() throws {
        let app = XCUIApplication()
        app.launch()

        app.swipeUp()
        
        app.collectionViews.buttons["Sonya Jin"].tap()
        XCTAssert(app.staticTexts["Sonya Jin"].waitForExistence(timeout: 0.5))
    }
}
