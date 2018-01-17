//
//  Equatable+isAnyOfTests.swift
//  BasisTests
//
//  Created by Topic, Zdenek on 26/12/2017.
//  Copyright © 2017 Zdenek Topic. All rights reserved.
//

import XCTest
import Foundation
@testable import Basis

class EquatableIsAnyOfTests: XCTestCase {
    
    func testIsAnyOfSuccess() {
        let candidates: [String] = [
            "alpha",
            "beta",
            "gamma",
            "zeta",
        ]
        
        XCTAssert("zeta".isAny(of: candidates))
    }
    
    func testIsAnyOfFail() {
        let candidates: [String] = [
            "alpha",
            "beta",
            "gamma",
            "zeta",
        ]
        
        XCTAssertFalse("delta".isAny(of: candidates))
    }
    
}
