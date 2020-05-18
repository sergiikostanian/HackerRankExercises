//
//  RansomNote.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 15.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class RansomNote: XCTestCase {
    
    func checkMagazine(magazine: [String], note: [String]) -> Void {
        var magazineMap: [Int: Int] = [:] // [word hash : word count]
        
        for word in magazine {
            if magazineMap[word.hashValue] != nil {
                magazineMap[word.hashValue]! += 1
            } else {
                magazineMap[word.hashValue] = 1
            }
        }
        
        for word in note {
            guard let wordCount = magazineMap[word.hashValue], wordCount > 0 else { 
                print("No")
                return
            }
            magazineMap[word.hashValue]! -= 1
        }
        
        print("Yes")
    }

    func testExample() {
        let magazine = "give me one grand today night".components(separatedBy: " ")
        let note = "give one grand today".components(separatedBy: " ")
        checkMagazine(magazine: magazine, note: note)
    }
}
