//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class OliverAalami: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testOliverAalamiAndMapView() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.swipeUp()
        app.collectionViews.buttons["Prof. Oliver Aalami, MD"].tap()
        XCTAssert(app.staticTexts["Prof. Oliver Aalami, MD"].waitForExistence(timeout: 0.5))

        app.staticTexts["Prof. Oliver Aalami, MD"].swipeUp()
        XCTAssert(app.buttons["Office Location"].waitForExistence(timeout: 0.5))
        app.buttons["Office Location"].tap()
        
        XCTAssert(app.otherElements["AnnotationContainer"].otherElements["Map pin"].waitForExistence(timeout: 0.5))
    }
}
