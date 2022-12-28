//
//  PascalsTriangle.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 16.05.2021.
//  Copyright © 2021 Serg. All rights reserved.
//

import XCTest

class PascalsTriangle: XCTestCase {

    func printTriangle(rows: Int) {
        var prevRow: [Int] = []
        for i in 0..<rows {
            prevRow = makeRow(at: i, prevRow: prevRow)
            print(prevRow)
        }
    }

    func makeRow(at index: Int, prevRow: [Int]) -> [Int] {
        if index == 0 {
            return [1]
        }

        var row: [Int] = []
        for i in 0..<index + 1 {
            let upValue = prevRow.count > i ? prevRow[i] : 0
            let leftValue = i - 1 >= 0 ? prevRow[i - 1] : 0
            row.append(upValue + leftValue)
        }
        return row
    }

    func testExample() throws {
        printTriangle(rows: 10)
    }

}
