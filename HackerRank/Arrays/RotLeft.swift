//
//  RotLeft.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 12.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

/**
 HackerRank [link](https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays&h_r=next-challenge&h_v=zen)
 */
class RotLeft: XCTestCase {

    func rotLeft(a: [Int], d: Int) -> [Int] {
        let rotationNumber: Int
        if a.count < d {
            rotationNumber = d % a.count
        } else {
            rotationNumber = d
        }
        var rotatedArray = a
        rotatedArray.removeSubrange(0..<rotationNumber)
        rotatedArray.append(contentsOf: a.prefix(rotationNumber))
        return rotatedArray
    }

    func testExample() {
        XCTAssertEqual(rotLeft(a: [1, 2, 3, 4, 5], d: 54), [5, 1, 2, 3, 4])
    }
}
