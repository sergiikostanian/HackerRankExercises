//
//  TwoStrings.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 16.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class TwoStrings: XCTestCase {

    func twoStrings(s1: String, s2: String) -> String {
        var charactersMap: [Character: Bool] = [:]
        for char in s2 {
            charactersMap[char] = true
        }
        for char in s1 {
            if charactersMap[char] != nil {
                return "YES"
            }
        }
        return "NO"
    }
    
    func testExample() {
        XCTAssertEqual(twoStrings(s1: "hello", s2: "world"), "YES")
        XCTAssertEqual(twoStrings(s1: "hi", s2: "world"), "NO")
    }
}
