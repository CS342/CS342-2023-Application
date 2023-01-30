//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class AudreyLin: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testAudrey() throws {
        let app = XCUIApplication()
        app.launch()

        app.collectionViews.buttons["Audrey Lin"].tap()
        XCTAssert(app.staticTexts["Audrey Lin"].waitForExistence(timeout: 0.5))
    }
}
