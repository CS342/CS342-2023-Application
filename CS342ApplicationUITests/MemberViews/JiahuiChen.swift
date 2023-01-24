//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class JiahuiChen: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testRajPabariAndFunFactView() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Jiahui Chen"].tap()
        XCTAssert(app.staticTexts["Jiahui Chen"].waitForExistence(timeout: 0.5))
        
        app.staticTexts["Jiahui Chen"].swipeUp()
        XCTAssert(app.buttons["Random favorite song of Jiahui"].waitForExistence(timeout: 0.5))
        app.buttons["Random favorite song of Jiahui"].tap()
    }
}
