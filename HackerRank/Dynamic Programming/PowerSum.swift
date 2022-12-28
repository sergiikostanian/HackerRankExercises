//
//  PowerSum.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 18.04.2021.
//  Copyright © 2021 Serg. All rights reserved.
//

import XCTest

class PowerSum: XCTestCase {

    func powerSum(X: Int, N: Int) -> Int {
        _ = Int(floor(pow(Double(X), 1.0/Double(N))))

        return 0
    }

    func testExample() throws {
//        XCTAssertEqual(powerSum(X: 100, N: 2), 3)
//        XCTAssertEqual(powerSum(X: 100, N: 3), 1)
    }

}
