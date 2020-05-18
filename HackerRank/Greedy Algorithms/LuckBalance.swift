//
//  LuckBalance.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 17.04.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class LuckBalance: XCTestCase {

    func luckBalance(k: Int, contests: [[Int]]) -> Int {
        
        let sortedContests = contests.sorted { (l, r) -> Bool in
            if l[1] == r[1] {
                return l[0] > r[0]
            }
            return l[1] > r[1]
        }
        
        var luck = 0
        var lostCount = 0
        
        for contest in sortedContests {
            if contest[1] == 1, lostCount >= k {
                luck -= contest[0]
            } else {
                luck += contest[0]
                lostCount += 1
            }
        }
        
        return luck
    }
    
    func testExample() throws {
        let contests = [
            [5, 1],
            [2, 1],
            [10, 0],
            [1, 1],
            [8, 1],
            [5, 0]
        ]
        XCTAssertEqual(luckBalance(k: 3, contests: contests), 29)
    }
}
