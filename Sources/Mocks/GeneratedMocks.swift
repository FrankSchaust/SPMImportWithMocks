// MARK: - Mocks generated from file: SPMImport/TestProtocol.swift at 2020-12-01 15:27:21 +0000

//
//  TestProtocol.swift
//  SPMImport
//
//  Created by Frank Schaust on 01/12/2020.
//

import Cuckoo
@testable import SPMImport

import Foundation


public class MockTestProtocol: TestProtocol, Cuckoo.ProtocolMock {
    
    public typealias MocksType = TestProtocol
    
    public typealias Stubbing = __StubbingProxy_TestProtocol
    public typealias Verification = __VerificationProxy_TestProtocol

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: TestProtocol?

    public func enableDefaultImplementation(_ stub: TestProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func sayHi(to name: String) throws -> String {
        
    return try cuckoo_manager.callThrows("sayHi(to: String) throws -> String",
            parameters: (name),
            escapingParameters: (name),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.sayHi(to: name))
        
    }
    

	public struct __StubbingProxy_TestProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func sayHi<M1: Cuckoo.Matchable>(to name: M1) -> Cuckoo.ProtocolStubThrowingFunction<(String), String> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: name) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockTestProtocol.self, method: "sayHi(to: String) throws -> String", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_TestProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func sayHi<M1: Cuckoo.Matchable>(to name: M1) -> Cuckoo.__DoNotUse<(String), String> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: name) { $0 }]
	        return cuckoo_manager.verify("sayHi(to: String) throws -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class TestProtocolStub: TestProtocol {
    

    

    
    public func sayHi(to name: String) throws -> String  {
        return DefaultValueRegistry.defaultValue(for: (String).self)
    }
    
}

