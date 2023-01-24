
import XCTest


class RachelWu: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testRachelTwitter() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Rachel Wu"].tap()
        XCTAssert(app.staticTexts["Rachel Wu"].waitForExistence(timeout: 0.5))

        app.scrollViews.otherElements.buttons["@raachelwu"].tap()
        
    }
}
