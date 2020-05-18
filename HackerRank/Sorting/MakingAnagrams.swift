//
//  MakingAnagrams.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 18.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class MakingAnagrams: XCTestCase {
    
    func makeAnagram(a: String, b: String) -> Int {
        var count = 0
        
        var aSorted = a.sorted()
        var bSorted = b.sorted()

        var i = 0
        while i < min(aSorted.count, bSorted.count) {
            if aSorted[i] == bSorted[i] {
                i += 1
            } else if aSorted[i] > bSorted[i] {
                bSorted.remove(at: i)
                count += 1
            } else if aSorted[i] < bSorted[i] {
                aSorted.remove(at: i)
                count += 1
            }
        }
        
        return count + abs(aSorted.count - bSorted.count)
    }
    
    func testExample() {
        XCTAssertEqual(makeAnagram(a: "cde", b: "abc"), 4)
        XCTAssertEqual(makeAnagram(a: "cdefg", b: "aaabcde"), 6)

    }
    
}
