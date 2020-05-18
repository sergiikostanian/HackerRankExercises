//
//  MinimumSwaps2.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 15.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class MinimumSwaps2: XCTestCase {

    func minimumSwaps(arr: [Int]) -> Int {
        var count = 0
        var array = arr
        
        var indices: [Int] = Array(repeating: 0, count: arr.count)
        for i in 0..<arr.count {
            indices[arr[i] - 1] = i
        }
        
        for i in 0..<indices.count {
            if array[i] != i + 1 {
                let value = array[i]
                array.swapAt(indices[i], i)
                indices.swapAt(value - 1, i)
                count += 1
            }
        }
        
        return count
    }
    
    private func stringToIntArray(_ string: String) -> [Int] {
        return string.components(separatedBy: " ").map({ Int($0) ?? 0 })
    }
    
    func testExample() {
        let arr = stringToIntArray("2 31 1 38 29 5 44 6 12 18 39 9 48 49 13 11 7 27 14 33 50 21 46 23 15 26 8 47 40 3 32 22 34 42 16 41 24 10 4 28 36 30 37 35 20 17 45 43 25 19")
        XCTAssertEqual(minimumSwaps(arr: arr), 46)
    }
}
