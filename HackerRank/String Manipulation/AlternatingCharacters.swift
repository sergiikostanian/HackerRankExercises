//
//  AlternatingCharacters.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 18.05.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class AlternatingCharacters: XCTestCase {
    
    func alternatingCharacters(s: String) -> Int {
        var deletionsCount = 0
        
        for i in 1..<s.count {
            if s[s.index(s.startIndex, offsetBy: i)] == s[s.index(s.startIndex, offsetBy: i-1)] {
                deletionsCount += 1
            }
        }

        return deletionsCount
    }

    func testExample() throws {
        XCTAssertEqual(alternatingCharacters(s: "AAABBB"), 4)
        
        let s = """
BABABBABBBABAAABBAABAAABBAABAAABABBABABABBABBABBABAABAAAAABABABBBBBABBBAABAABBBBABABBAAAABABBABBBABABAAABAAABBABAABBABBAAAAAABBBBABBBBBAABBBABBABABBBBBBBBBBAAAABBBAAAAABBABABBBBAAABABABBBABBAAABABBBBAABBBAAABABBABBAAAAABBAAABABABAAAABBABBAAABABAAAAAAAABAAAABBABBABBBAAAAABBAAABAABBABAABABABBABBBAABAABBBBBABAABABABBABABBBABABBABABAAABBBBAAABABBBBAABBAAABBBABBBABBAAAAAAAABABBBABABAAAABBAAABBBAABAABAABABBAABABBAABAAABAABBBABBAABBABBBBABBBBBABBBBBAAAAABAABBABBABABABBBBBBABABBAABAABAABBBBBAABBAAAAABBBABABABBAABBAABBBAAAAAABBABBABABBBAABBBBABAABBBABAABAABBBAABBABBBBBAABAAAAABAABBABBAAAABAAAABBBAAABBBBBBBAABABBABAABAAAABAAAABAAABBBABBABBBBBABAABBAABBBBBBBBBABBBABABBBBBAABBAABBABABABBBBAABBBABBBBAAABBABAABBBBABBAAABBAAABBBAAABBABABBBABABAAABBAABABBAAABBAABABBBBBBBBABABBAAABABBAABAAABBAABBBABABABABABBABBBABAABBAAABBABAAAABBABAAAABBBABAAABABAABABABAABBBAABBABBBABAAAABABBBAABABBBAAABBABABBBBABAABABAAAABAAABBAABABABBBBBBAABBAAAABBABBBABABAABAAAABAAABBABABBABBBABBBABAAABABBAABBABBBABABABBAABABAABBAABBAAABAAAABABABBBAAAAABABBABABBBABABAABBBABAAAABAAAABBBABBBBAABBABAABBBABABABBBBBBAABBBAAABBBAABBABBBBBABAAABAABBABABAABBAAAAABAAABBBAABBABAABBABBAABBAABAABBBBBAABBBBAABAAABAABBABABBBAABABBBABABABABBABBAABABAABBAAAAABABAAABABABABAAABAABAABABAABABAABBABBABBAABBABBABBBBBABABAABBABABAABABAAABBAAAABBBABABBBBBAABABBABAAAAAABBBBBBAABABBBBABAABAAABABBAABAAABBBABBBABABABBBABBAABBABABBBBBBBBABABAAABBAAAAABBABABABBBAAAABBBBBBABBAAABBABBBAABABBABAABAABABABABABBBBAABBBBBBAABBAABABBBABABABABABAAAABBBABBABABBAABBAAABBBAABBAABAABAAAABBBABABBBABBBBAAAAABBABABABBAABBBABBBAAAABBBABBAABBBABABBBABBBABABABBABBAABABABBAABABBBAABBAABBAABBBBABBAAAAABBABAABBBBAABABABBBABABBBBABBAAABABABABAABBBBABABAAABAAABAAAAAABABBBABAAABBABAAABBBABBAABAABAAABBAABBABBBABABABABAAABAAABABBABABBBBABAABBBBABAAAAAABAABBAABAABABABAABABABAABBABBAABBAAABBBBBBBABAABAAAAABBBABABAAABBBBAABBBABBBBABBABAAABBAAAAAAABBBBBBABAAAABBAABAABBAAABAABBBBAABBAABBBBBBBABBBBBAAAABBBBAAABABAABBBAABBBABABBBBBABABABAABBBBAABBBBBBAAAABABABAABBAABBBBAABBABBBAAABAABABBBAAAAABAABBBABBBABABAABABBAABABBAABAAAAABBAAABBABAABABAABAAAAABAAAAABAAABAABAAABAAAABAAABBBBBAABBABABBAAABAABABBABBBAAABBBAABABABAAABBABAABBAAAAABAABABABBAAABBBBBBBABAAAABAABBABBAABBBABBABBBAABBBBAAAAABBABABABBAABBAABABAABABAAAAAABAAAABABBBBBBABBAABBABAAAAABAABBABBBABABABBBBAABAAAABAAAABBBBAAAAABABBAABBBABAABAABBBBBBAAAABBABBBBAABABAAABAAAAABBBBBBBBBBAABBBABABAAABAAAAABABAAABBBBABABBAABABBBABABAABABABABBAAAABABABAAABABAABAAAAAAABABBBAAAAABBBBABBABAABABBAABAAAAABBAABAABBBABAAAABAAAAAAAABBABBABAABAABBABABBABBBAABAABBABAAABABBBABBABBBBAABABAABBABBBBABBAAAAABABAAAABBABAABAAAABABABBABBABBAAAAAAAAAABBABABABBBBABABBBAAAAAAAABABBABAABAAAABBBABABAAABABBABBBABAAABAAAAABAAABAAABAAABABAAABBBBBBBABBBABAABAAAAABBABAAABABAAABBBAAABBABBBABBAABABBBBBAABBBBBABABBAAABBBAAABAAAABBABAABBBABABAAABAABBAABAAAABABABBBBBBBABAAAAAABABAABABBAABBAAAABBBAAAAAAAAAABBBABBBBAAAABBBABBBBAABBABBBAABBBABBBAAAAAABABBBABABBAABBBABBAABABAABAABBABBAAAABBBABBAABAAAAABBABBBABBBBAABAAAABBAABABABBABBAABBBBBAAAAAABABBAABBBABAAABAAAAAAAABBABAABAABBBAAABBAABABABBABBABBBBAABABBABBABBAAABABBBBAABAAABBBABABABBAAAABBBBBAAABBBAAAAAABBAABABBBABAAABBBBABBAAABAAAAAAAAAABABAAABAABBAAAABBBAAAAAABBBBBBBAAAAAABABBBBBABBBABBBBABABABAAAAABAABBAAABBABBBBBAAABAAABABBAABABBAABABBAABBBAABABBABBABABAABABABBBAAAAAABBAAABABAAAAABAAAABABABBBABBABBBABBAAABBAABBBBBBBABBABABBBABAAAABABAAABAAABABABABBBBABBBABAABABBAABAAABBAABBBABABBBBAAABAABBBAABABABBBABBBAABAABBAABABAABAAAAAABAAABBABABBBABBBABAAABAAAAABBBBABBAAAABABBBBABBBABBAABBAABBBAABBBBABBBAAABBBAAABBBBBAAAAABBAAAABBABABBAAAABBABAAABBAABBABAABBAAAABBAABABBBAAAAAABBABBBBAAABBABBBBABBABABAABAABAABABAABAABBBBAAABBBBBABAAAAAABAAABAABBABABABAAABBBAAAABAABBAABBBABBBAAAABABBBBBABBBBBABBBAABABAAAAAAAAABBBBABAAABBBBBAAABAABBABBABBAABABBBBABBAABBBABABAABBABBBAABAAAABBBABAABBBAABAAAABBABBBABBBBAAABBBABAAABBBBABABBBABABAAAAAAAAABBBBABBBAAAABBAAABAABAABAABAABAABABBBBAABAAABAAABBAABABBBBABAABBABBAABABAAABAABBBBBAAAABBAAAAABBBABBABAABABBBBAAABBABBBBBABBAAABBBABAABBBAAABAAABBABAAABABBABBBABBBBBABABBAAABABABABBAABBBBBBABABBBABABAABBAABBBAAABAAAAABBBBABABABBBABBBABAAABAABABBABBAAABABAAABBBBAAABBABBBBAABBAAABAAABABBABABABAAABBAABABBABAABAABAAAABABBAABAAAABBABAABBBABBBBBABBAABABABBBBABBBBBBBAABBAAABAABBBBBAAAABAAAABBBAAAAAABBABABBAABBAAAABABBABBAAAAABABBBAABABAAABAAAAABABABABBABBAAABABAAAABBBBABBABBBBABAAABAABBABAAAAABBAAABABBBAAABBAABABAAABBBBBAAABBABBBBAAAABBBABBBBBBABABBAABAAABABAAAAABABABBBBBAAAABBBABABBABABAABBABAABABABABBAAAABBAABABABBBABABBBBBABABABABBABBBBABAAAABBBBABABBBABABAAABABBBBBABABBBBAABABAAABABBAABBAABBAAABBBBAAABBBABABBAABBBABBBBBABBABABBABBABABBBBABABABAABBBABBBAABBBABBBBAABBBAAAABBABBBBBBAABAAABAAABBABBBABBABABAABABABAABBAABAABABBAAABABBBBBABBBBABAABAAAABAABABABBAABABABABABAABAAABAABABBAAABABABBABBAABBABAAAABABBABAAAAAAABBAABABABBBABAAABABBAAABAABBAABBBBBAAAABBABBAABBAABAABBBBBABBBBAAABABBBABBBABABBAAABBBAAAAABBBABBBAAABBAAAABBBBBABABAAABAAABBABABBBAAAABAAABBBBBABBBABAABAAABBAAABAABABAAABABABAAABABBAABAAABBBBABAAABAABBABAABAAAAABAAABBBAAAAABAABBAABAAAAABABBABAABABABAABABBABABAAAABAABBAAAABAABBABAAAAABBAABBAAAABAAAAABAAABBBABBABBABABBABABBABABAABABBBAAABABABABBBBBAAAABBBABAABBBBAABBAABBBABAAAABAABABABBBBAAABBBBAABBBAAABAABABBAABBABBBABBBABABBAAABAABBBBABABAAABABABABBBBABABBAAAAAABBBBBAABABABABAAABBABAABBBBABBABBBAABBBAABBAABBBBABABBBAAAAAAABBABBBAABABABAAABBAABBBBAABAABBBABABABBABBAABAAABBABABAABBBBBAABBBBBAABBBAAAAAAABABAABABABBBBBBAAAAAABAABAAAABAABBABAABAAAABBBAABAABBABBAABBBBBAABAABBABBABABBAABBAABBBABABABABBBBBAAAABABBAAAABBABAABABBBABBBAAAABAABBAAAAAABBBBAABBABBABABAAAAABAAABBABBAAABBABBBBAAAABABBABBBABBAAAAAAAAABBABBAABAABAAABAABBAABBBBBBBABABAAABAAABABBAAABABAAABBBBBAABBAABBBBBBBAABBABABBBABBBBAAAABBBBBBAAAAABAAAAABAAABAABBBBABABABABABAABAABAABAABAABAAAABBAABBABBABAAABAABAAAAAABBBBBBBBABBAAABAAAAAAAAABABBABBBAABABABAAAAAABAABBAABAAAABBBBBABBBBBAABABBABABABAABBBABBBAAABBABABAAABABABAAAABABBBABABAAABABBBBABAAAABABAABABBBAABBABABBBBAAABABBBBAABBABBBAAABBAABBAAABBABBBAABBBBBAAABBBAABBBBBAAABABAABAABABAAABAABAAAAAABBBABAAAAABBBBBABAABABAABAABAABBBBBBBABBAAABBBBBBBABAAABAABABABABBBABBABBAABABABAABABBABBBAABBBBAABBBBABAAAABABBAAABBABBBBBAAABBBBAAABBABBABBAAAAABAAABBBAAABBBAABABAABABABBABBAAAAABBAAAAABBBBABBBBBABBAAAAABBABBAABABBABAABBAAABBABBBABBABABBBBAAAABBBABBBABBAABABABBBAABABAAAAAABBBABABBAAABABBBBBBBBBAAAAABBABABBAABBBABABBBAABBBABAABBABABBBBAABAAAAABABABBBABAAABABABAAABBABABBAABABBBABABBBBABAAAABAAABAAAABAABBABBBBABABBBBAAABABBBBBBBBBBBBABBBAAAABABAABBABAAABBAAABABABABABAABBABBABBBABAAAAABAAAAABAAABABABBBBAABBAAABAABBABBBBBBAABABAABBBAABBAABAAABBAABBBAABAABBBABBAAAABBBBBABABABBAAAABABBAAABAAAAAABBBAABBABAAABBABBBBAABABBABBBBAABBABABBBBABABABABAAAAABBAAABBABAAAAABBABBBBABBABBABBAAABABABBAABAAABBAABBABBBAAAABABBAABBAABAAAAAAAAAABAAABBABABAAABAAAAAABBBBBBABBAAAAABBABAAAAAABAABABABABBBABBABBAABBBBBABBABAAAABABBABABBBAABBBBBABBAABBBBBBBBABBBABBBAAAAABABABBBABBBBBBAAABABAAAABBABBBBABAAABABBBAAABABABBBBBBBAAABBBABAAAAAABBBABABBBBAABBAABABBAAAAAABAABAAABABBBAABABABBAABBBBABAABBAAAAAABABBBBBABAAABBBBAAAAAAABBABBABBABABBBABABABABABBAAAAAAAABBBBBBBABABBBBBABAAAAABBABBAABABBAAABAAAAABBBBBABAAAABBABAABABABBABAABABBAAABAAAAAAAABABAAAABABAAAABBBABBABAAAAAABAAAABABBAABBBABBBBABABBBBABAAABBABBAAABABBAABBBAAABABAABABBBBAAABBABABABAABBBABAAAAABABBAAABAABBABBABBBBBABAAAABBBBABABBAABAAABAAAABBBAABBBAABBBAABAAABAAAABBBBBAAABBAABABBAAABBAABAAAABBAAABBBBBBBBBBABABBABABBAABBBBAABAAABBABABABAABABAAABABBAAABBABAABAAAABABBABBBBABAAAABAABAAABBABBABBBAAABAAABBAABABBBBAABAAABAAABBAAAAABAAABAABBBABABBBBBBBAABBBBBBBBBABAAAABBBAAAABBBAABABBBAAABBBAAABAABABAABAAAAABAAAABBABBAAAAABABBAAAABABBABBABABBAABAAABABBBABABBBBBABBBAABABBBBBAAAAABABABBBABABAABABAABBABAAAAAAAAABAABABAAAABBAABBABBABAABAABAABABAAAAAAAABBBBBABBBABBAAAAAAABBAABBBBBBBBAABABBBBBBAABAABBABAABABABBBBABBBABABABABAAAABBBBABBAABABAAAABABBBAAABBBBBAAABBAABBABAAAAABBBBAAAABAAAABBABABBABABBBAABAAABABAAAABAABAABABBAABBAABBABBBBBABBAABBBBBBABAABBABAAAABBBAAABAABBBBAAABBBBBBAAAABAABBBBABBABBAAABBABBABBBAABABABBABAAAABBAABBABABAABABABBABBBBABBBBBBABBABABABABBAABBABABABABBBABBAABBBBABBABBAABAAABBAABBAAAAABBAAABBBABAAABAAABAAABAAABAAAABBBBBBBBBBABBABAABBBABAABBABBAAABBABBBAAAABBAABAAABABAAABAAAAABABBBAABAABABBABBABBABBBBABBAABBABABBAAAABAAAABBBAABBBABBAAAAABABABAABABAABABABAAABABABBABBABAAAABBBABAAABABBBBBBABBAAAAABABBAAABBBBABBAABBBBAAABABBABAAAAAABAAABBABABAABBBAABABBAAABAAABAAAAAABBABBABBBAABABBBBBABBABBBABBABAAAABBAAABAAABBAAABABABBBABAABBABBAAABAAABABAABAAABABABAAABABAABABBAAABABBBBBABABAAAABABBBBAAABABBABBBBABBBABAAABAABBBAAAABAAAABBBAAABABABAAAAABBBAAABBABABBABAAAAABBBAAAAAABABABAABBBAABBBAABABBAAABAAABAAABAAAAAABAABBBABBBBAAAAABBBBABAAAAABAABBABAAAABBBBABBABABAABAABAABBAAABABBABBABABBBABAABBAABAABABBABBBABAAABABBBAABABABAABBBBABBBAABBAAABABBABBABAAAABABBBAAABBBBAABAABBBABBBABBAABBBAAABABBBABBABABABABBBABBBAABBBBBBBBBAAABBBBBBABABAAAABABBABABAAABBBABBBBBAAABBBABBABAAABABBBBBBBAABAAABBABBBAABBBAABAAABAAABBAAAABAABBBAABBABBBBBBABBBABBBBABBABBAAABBABAABABABABBBBAAABBBAABABABBAABBABBBBAAAABABAABBAAAAABAABBBAAABAAABBABAABABBABAABBAAABAAABAAABAABABBBBBABAAABAABBBBAABAAAABABBAABABBBABBABBAABBBAABABBBBBAAABAABABAABBBABAABBBAABAAABBBBBBBBAAAABAABBBBABBBBAABBABBBBAAAAABAABABBBABABBAABBABABBBAAABBBBBABBABABABABAABBBABAABBBBBAAABBBBAABABBAABBABABAABAAABABBAABBBBAABAAABAAAABAAAABBBBBABBBBBBAAABABBAAABAABBABABABAABABAABBBBBBAAABAABBBAAAAAABAABABAABABABABABBAAABABAAAAAABAABBBABBBBABAAAABABAAAABAABAABBAAAABABABBAABABAABBABBAABAABABBBBBBAAAABBAABBBBBAABBBBBABBBBBAAAABBAABBBABABABAABBBAABABAAABABAAABAAAAAABABAABABAAAABABBAABBBBBBAAAAAABBAABAAAAAAABBAAABABABABBABBBBBABBAAAAAABAAABAAABBBBAABBAAABABBBBABBAABBABBABAABBBABBBBAABBABBBABABBAABBBABAABBBAABABAABBBBAAAABBBBBBAAAABBBAAABABBABBBBABBBBAAABBABBABAAABABBBBBABABBBAABBBBBAABABAABAABBBABAAABBAAAAAABBAABAAAAAAABBBAAABBABBBAAABAABBABBBBBBBBBAAABBBBAABBABBABAABABBBAABBBABBABBBAAAABABBBBBABBBBABBABABBAAABABAAABBBBAAABBABABAAABAABBBAABBAABAAABBBABBBABAABBABAABAAAAABBAAAAABAAAABABABAAABBABBBBBABBBABBBAAAAAAABABBABAAABAAAABAABBBBBBABBABBBBABAABAAAABAABAABABBAAABBBABABABBABBBBBBAAAAAAABBBABAAABBAA
"""
        XCTAssertEqual(alternatingCharacters(s: s), 4930)
    }
    
}