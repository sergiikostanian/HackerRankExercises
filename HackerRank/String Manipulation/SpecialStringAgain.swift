//
//  SpecialStringAgain.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 14.04.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class SpecialStringAgain: XCTestCase {

    typealias CharOccurance = (char: Character, count: Int)
    
    // Formula: (n * (n + 1)) / 2 https://www.mathsisfun.com/algebra/triangular-numbers.html
    
    func substrCount(n: Int, s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        
        var total = 0
        var charOccurances: [CharOccurance] = [(char: s.first!, count: 1)]
        
        for i in 1..<n {
            let curr = s.index(s.startIndex, offsetBy: i)
            let prev = s.index(s.startIndex, offsetBy: i-1)
            
            if s[curr] == s[prev] {
                charOccurances[charOccurances.count-1].count += 1
                if i == n - 1 { // last element
                    let count = charOccurances.last!.count
                    total += (count * (count + 1)) / 2
                }
            } else {                
                if i == 1 {
                    total += 2
                } else {
                    let count = charOccurances.last!.count
                    total += (count * (count + 1)) / 2
                }
                charOccurances.append((char: s[curr], count: 1))
                
                if charOccurances.count > 3 {
                    let prev = charOccurances[charOccurances.count - 4]
                    let curr = charOccurances[charOccurances.count - 3]
                    let next = charOccurances[charOccurances.count - 2]
                    
                    if curr.count == 1,
                        prev.char == next.char {
                        total += min(prev.count, next.count)
                    }
                }
            }
        }
        
        if charOccurances.count > 2 {
            let prev = charOccurances[charOccurances.count - 3]
            let curr = charOccurances[charOccurances.count - 2]
            let next = charOccurances[charOccurances.count - 1]
            
            if curr.count == 1,
                prev.char == next.char {
                total += min(prev.count, next.count)
            }
        }

        return total
    }
    
    func testExample() throws {
        XCTAssertEqual(substrCount(n: 4, s: "aaaa"), 10)
        XCTAssertEqual(substrCount(n: 5, s: "aabaa"), 9)
        XCTAssertEqual(substrCount(n: 7, s: "abcbaba"), 10)
        XCTAssertEqual(substrCount(n: 8, s: "abcbabab"), 12)
        XCTAssertEqual(substrCount(n: 5, s: "ababa"), 8)
    }
}
