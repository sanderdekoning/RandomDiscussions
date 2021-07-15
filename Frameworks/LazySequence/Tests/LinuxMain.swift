import XCTest

import DemoTests

var tests = [XCTestCaseEntry]()
tests += LazySequenceTests.allTests()
XCTMain(tests)
