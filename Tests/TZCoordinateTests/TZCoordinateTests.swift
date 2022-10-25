import XCTest
@testable import TZCoordinate

final class TZCoordinateTests: XCTestCase {
    func testLoadTimeZones() throws {
        XCTAssertEqual(try TZCoordinate.shared.timeZones().count, 419)
    }
}
