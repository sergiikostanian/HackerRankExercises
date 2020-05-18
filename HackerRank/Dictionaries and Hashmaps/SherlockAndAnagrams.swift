//
//  SherlockAndAnagrams.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 16.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class SherlockAndAnagrams: XCTestCase {
    
    func sherlockAndAnagrams(s: String) -> Int {
        var anagramsCount = 0
        
        for charsCount in 1..<s.count {
            var substringsHashMap: [Int: Int] = [:] // [substring hash: occurrences count]

            for i in 0...s.count - charsCount {
                let startIndex = s.index(s.startIndex, offsetBy: i)
                let endIndex = s.index(s.startIndex, offsetBy: i + charsCount)
                let substring = String(s[startIndex..<endIndex])
                let hash = anagramHash(of: substring)
                
                if substringsHashMap[hash] != nil {
                    substringsHashMap[hash]! += 1
                } else {
                    substringsHashMap[hash] = 1
                }
            }
            
            for occurrencesCount in substringsHashMap.values {
                if occurrencesCount > 1 {
                    // gauss trick: (n * (n-1)) / 2
                    // https://en.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_%E2%8B%AF
                    anagramsCount += (occurrencesCount * (occurrencesCount - 1)) / 2
                }
            }
        }
        
        return anagramsCount 
    }
    
    func anagramHash(of string: String) -> Int {
        return string.sorted().hashValue
    }
    
    func testExample() {
        XCTAssertEqual(sherlockAndAnagrams(s: "abcd"), 0)
        XCTAssertEqual(sherlockAndAnagrams(s: "kkkk"), 10)
        XCTAssertEqual(sherlockAndAnagrams(s: "ifailuhkqqhucpoltgtyovarjsnrbfpvmupwjjjfiwwhrlkpekxxnebfrwibylcvkfealgonjkzwlyfhhkefuvgndgdnbelgruel"), 399)
    }
    
}
