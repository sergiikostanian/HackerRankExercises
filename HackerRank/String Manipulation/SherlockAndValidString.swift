//
//  SherlockAndValidString.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 13.04.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class SherlockAndValidString: XCTestCase {

    func isValid(s: String) -> String {
        var charFrequency: [Character: Int] = [:]
        for char in s {
            if charFrequency[char] == nil {
                charFrequency[char] = 1
            } else {
                charFrequency[char]! += 1
            }
        }
        
        var values = Array(charFrequency.values).sorted()
        var isRemovedFirst = false
        
        if values.count > 1 {
            if values[0] == 1 && values[1] != 1 {
                values.remove(at: 0)
                isRemovedFirst = true
            }
        }
        
        let commonValue = values[0]
        for i in 1..<values.count {
            if commonValue == values[i] {
                continue
            }
            if !isRemovedFirst, i == values.count - 1, commonValue == values[i] - 1 {
                continue
            }
            return "NO"
        }
        
        return "YES"
    }

    func testExample() throws {
        XCTAssertEqual(isValid(s: "aabbccddeefghi"), "NO")
        XCTAssertEqual(isValid(s: "abcdefghhgfedecba"), "YES")
        XCTAssertEqual(isValid(s: "bbc"), "YES")
    }
}
