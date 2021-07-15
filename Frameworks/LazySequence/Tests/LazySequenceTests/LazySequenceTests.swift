import XCTest
@testable import LazySequence

final class LazySequenceTests: XCTestCase {
  override class func setUp() {
    // Read shared to set up singleton before tests run to not affect time profiling
    _ = LazySequence.shared
    
    super.setUp()
  }
  
  static var allTests = [
    ("testDemoLazily", testDemoLazily),
    ("testDemoNonLazily", testDemoNonLazily),
    ("testDemoLazilyMultipleReads", testDemoLazilyMultipleReads),
    ("testDemoNonLazilyMultipleReads", testDemoNonLazilyMultipleReads),
  ]
}

extension LazySequenceTests {
  func testDemoLazily() {
    LazySequence.shared.demoLazily()
  }
  
  func testDemoNonLazily() {
    LazySequence.shared.demoNonLazily()
  }
  
  func testDemoLazilyMultipleReads() {
    LazySequence.shared.demoLazilyMultipleReads()
  }
  
  func testDemoNonLazilyMultipleReads() {
    LazySequence.shared.demoNonLazilyMultipleReads()
  }
}
