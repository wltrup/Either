import XCTest
@testable import Either

final class EitherTests: XCTestCase {

    static var allTests = [
        ("test_lhs", test_lhs),
        ("test_rhs", test_rhs),
        ("test_comparable", test_comparable),
    ]

    func test_lhs() {
        let either: Either<Int, String> = Either.lhs(10)
        XCTAssert(either.lhs == 10)
        XCTAssert(either.rhs == nil)
    }

    func test_rhs() {
        let either: Either<Int, String> = Either.rhs("foo")
        XCTAssert(either.rhs == "foo")
        XCTAssert(either.lhs == nil)
    }

    func test_comparable() {
        let either1: Either<Int, String> = Either.lhs(10)
        let either2: Either<Int, String> = Either.lhs(20)
        let either3: Either<Int, String> = Either.rhs("A")
        let either4: Either<Int, String> = Either.rhs("B")

        XCTAssertTrue(either1 < either2)
        XCTAssertTrue(either1 < either3)
        XCTAssertTrue(either1 < either4)
        XCTAssertTrue(either2 < either3)
        XCTAssertTrue(either2 < either4)
        XCTAssertTrue(either3 < either4)

        XCTAssertFalse(either2 < either1)
        XCTAssertFalse(either3 < either1)
        XCTAssertFalse(either4 < either1)
        XCTAssertFalse(either3 < either2)
        XCTAssertFalse(either4 < either2)
        XCTAssertFalse(either4 < either3)
    }

}
