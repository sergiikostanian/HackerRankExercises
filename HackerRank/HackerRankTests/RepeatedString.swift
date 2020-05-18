//
//  RepeatedString.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 12.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

/**
 Lilah has a string, , of lowercase English letters that she repeated infinitely many times.

 Given an integer, , find and print the number of letter a's in the first  letters of Lilah's infinite string.

 For example, if the string  and , the substring we consider is , the first  characters of her infinite string. There are  occurrences of a in the substring.

 Function Description

 Complete the repeatedString function in the editor below. It should return an integer representing the number of occurrences of a in the prefix of length  in the infinitely repeating string.

 repeatedString has the following parameter(s):

 s: a string to repeat
 n: the number of characters to consider
 */
class RepeatedString: XCTestCase {

    func repeatedString(s: String, n: Int) -> Int {
        guard !s.isEmpty else { return 0 }
        guard s != "a" else { return n }
        guard s.count > 1 else { return 0 }
        
        var aCount = 0
        s.forEach({ if $0 == "a" { aCount += 1 } })
        
        let num: Int = (n / s.count) * aCount
        
        var aLeftCount = 0
        s.prefix(n % s.count).forEach({ if $0 == "a" { aLeftCount += 1 } })
        
        return num + aLeftCount
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(repeatedString(s: "aab", n: 10), 7)
    }
}


