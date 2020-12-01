//
//  Test.swift
//  Mocks
//
//  Created by Frank Schaust on 01/12/2020.
//

import Foundation
import XCTest
@testable import SPMImport
class Test: XCTestCase {
    func test_shouldSayHi_if_nameIsNotEmpty() {
        let name = "me"
        let expectedGreeting = "Hey \(name)! How are you?"
        let sut = TestClass()
        let result = try? sut.sayHi(to: name)
        XCTAssertEqual(result, expectedGreeting)
    }
    func test_shouldThrowError_if_nameIsEmpty() {
        let name = ""
        let sut = TestClass()
        do {
            _ = try sut.sayHi(to: name)
            assert(false)
        } catch {
            guard let _ = error as? TestError else {
                assert(false)
            }
        }
    }
        
}
