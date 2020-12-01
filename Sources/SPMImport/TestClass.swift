//
//  TestClass.swift
//  SPMImport
//
//  Created by Frank Schaust on 01/12/2020.
//

import Foundation

public class TestClass: TestProtocol {
    public init() {}
    public func sayHi(to name: String) throws -> String {
        if name.isEmpty {
            throw TestError.TestFuncError
        } else {
            return "Hey \(name)! How are you?"
        }
    }
}
