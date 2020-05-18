//
//  BubbleSort.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 18.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class BubbleSort: XCTestCase {

    func countSwaps(a: [Int]) -> Void {
        var sortedArray = a
        var swapCount = 0
        
        for i in 0..<sortedArray.count {
            for j in i..<sortedArray.count {
                if sortedArray[j] < sortedArray[i] {
                    sortedArray.swapAt(i, j)
                    swapCount += 1
                }
            }
        } 
        
        print("Array is sorted in \(swapCount) swaps.")
        print("First Element: \(sortedArray.first!)")
        print("Last Element: \(sortedArray.last!)")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
