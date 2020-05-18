//
//  MinimumAbsoluteDifferenceInArray.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 16.04.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class MinimumAbsoluteDifferenceInArray: XCTestCase {

    func minimumAbsoluteDifference(arr: [Int]) -> Int {
        let sortedArr = arr.sorted()
        var min = Int.max
       
        for i in 1..<sortedArr.count {
            let diff = abs(sortedArr[i-1] - sortedArr[i])
            if diff < min {
                min = diff
            }
            if diff == 0 {
                return 0
            }
        }
        return min
    }

    func testExample() throws {
        XCTAssertEqual(minimumAbsoluteDifference(arr: [-59, -36, -13, 1, -53, -92, -2, -96, -54, 75]), 1)
    }

}
