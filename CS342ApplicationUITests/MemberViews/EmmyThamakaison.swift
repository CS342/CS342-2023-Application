//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class EmmyThamakaison: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testEmmyThamakaisonandLinkedInLink() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Emmy Thamakaison"].tap()
        XCTAssert(app.staticTexts["Emmy Thamakaison"].waitForExistence(timeout: 2.0))

        //app.scrollViews.otherElements.buttons["LinkedIn"].tap()
        
        //let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        //XCTAssert(safari.wait(for: .runningForeground, timeout: 2.0))
        
    }
}
