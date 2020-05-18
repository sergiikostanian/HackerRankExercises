//
//  CommonChild.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 17.05.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

// TODO: Improve.

class CommonChild: XCTestCase {
    
    /// Problem description and solution source: https://en.wikipedia.org/wiki/Longest_common_subsequence_problem 
    func commonChild(s1: String, s2: String) -> Int {
        guard s1 != s2 else { 
            return s1.count
        }
        
        var childrenMatrix = Array(repeating: Array(repeating: 0, count: s2.count), count: s1.count)
        
        for i in 0..<s1.count {
            for j in 0..<s2.count {
                if s1[s1.index(s1.startIndex, offsetBy: i)] == s2[s2.index(s2.startIndex, offsetBy: j)] {
                    guard i > 0 && j > 0 else {
                        childrenMatrix[i][j] = 1
                        continue
                    }
                    childrenMatrix[i][j] = childrenMatrix[i-1][j-1] + 1
                } else {
                    if i == 0 && j == 0 {
                        childrenMatrix[i][j] = 0
                    } else if i == 0 {
                        childrenMatrix[i][j] = childrenMatrix[i][j-1]
                    } else if j == 0 {
                        childrenMatrix[i][j] = childrenMatrix[i-1][j]
                    } else {
                        childrenMatrix[i][j] = max(childrenMatrix[i][j-1], childrenMatrix[i-1][j])
                    }
                }
            }
        }
        
        return childrenMatrix[s1.count-1][s2.count-1]
    }

    func testExample() throws {
        XCTAssertEqual(commonChild(s1: "ABDC", s2: "ABCD"), 3)
    }
}
