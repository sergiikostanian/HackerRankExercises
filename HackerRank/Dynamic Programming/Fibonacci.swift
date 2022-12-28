//
//  Fibonacci.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 18.04.2021.
//  Copyright © 2021 Serg. All rights reserved.
//

import XCTest

class Fibonacci: XCTestCase {

    var memo: [Int: Int] = [0: 0, 1: 1]

    func fibo(n: Int) -> Int {
        if n <= 0 {
            return 0
        } else if n == 1 {
            return 1
        } else if let value = memo[n] {
            return value
        } else {
            print(n)
            memo[n] = fibo(n: n-2) + fibo(n: n-1)
            return memo[n]!
        }
    }

    func testExample() throws {
        XCTAssertEqual(fibo(n: 7), 13)
//        print(memo)
    }

}
