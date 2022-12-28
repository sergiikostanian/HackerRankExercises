//
//  Knapsack.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 11.04.2021.
//  Copyright © 2021 Serg. All rights reserved.
//

import XCTest

class Knapsack: XCTestCase {

    func unboundedKnapsack(k: Int, arr: [Int]) -> Int {
        let sortedArr = arr.sorted(by: { $1 > $0 })

        var closest = 0

        for i in 0..<sortedArr.count {
            let iReminder = k % sortedArr[i]
            if iReminder == 0 { return k }

            closest = max(closest, k - iReminder)

            for j in 0..<sortedArr.count {
                let jReminder = iReminder % sortedArr[j]
                if jReminder == 0 { return k }

                closest = max(closest, k - jReminder)
            }
        }

        return closest
    }

    func testExample() throws {
        XCTAssertEqual(unboundedKnapsack(k: 22, arr: [4, 7]), 22)
        XCTAssertEqual(unboundedKnapsack(k: 12, arr: [1, 6, 9]), 12)
        XCTAssertEqual(unboundedKnapsack(k: 9, arr: [3, 4, 4, 4, 8]), 9)
        XCTAssertEqual(unboundedKnapsack(k: 13, arr: [3, 7, 9, 11]), 13)
        XCTAssertEqual(unboundedKnapsack(k: 11, arr: [3, 7, 9]), 10)
    }

}
