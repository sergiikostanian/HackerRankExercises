//
//  ComputingGCD.swift
//  HackerRank
//
//  Created by Serhii Kostanian on 14.05.2021.
//  Copyright © 2021 Serg. All rights reserved.
//

import XCTest

class ComputingGCD: XCTestCase {

    func gcd(x: Int, y: Int) -> Int {
        if x > y {
            return gcd(x: x - y, y: y)
        } else if y > x {
            return gcd(x: x, y: y - x)
        } else { // x == y
            return x
        }
    }

    func testExample() throws {
        XCTAssertEqual(gcd(x: 10, y: 10), 10)
        XCTAssertEqual(gcd(x: 45, y: 36), 9)
    }

}
