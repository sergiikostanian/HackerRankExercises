//
//  HourglassSum.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 12.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

/**
 HackerRank [link](https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays)
 */

class HourglassSum: XCTestCase {

    func hourglassSum(arr: [[Int]]) -> Int {
        var maxSum = Int.min
        for i in 0..<arr.count-2 {
            for j in 0..<arr[i].count-2 {
                var subArray = arr[i...i+2].map({ Array($0[j...j+2]) })
                subArray[1][0] = 0
                subArray[1][2] = 0
                let sum = subArray.joined().reduce(0, +)
                maxSum = max(maxSum, sum)
            }
        }
        return maxSum
    }

    func testExample() {
        let arr = [
            [-9, -9, -9,  1, 1, 1], 
            [ 0, -9,  0,  4, 3, 2],
            [-9, -9, -9,  1, 2, 3],
            [ 0,  0,  8,  6, 6, 0],
            [ 0,  0,  0, -2, 0, 0],
            [ 0,  0,  1,  2, 4, 0]
        ]
        XCTAssertEqual(hourglassSum(arr: arr), 28)
    }
}
