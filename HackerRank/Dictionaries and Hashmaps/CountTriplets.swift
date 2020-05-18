//
//  CountTriplets.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 17.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class CountTriplets: XCTestCase {
    
    func countTriplets(arr: [Int], r: Int) -> Int {
        
        let ratio = Double(r)
        
        var total = 0

        var firstCandidateMap: [Double : Int] = [:]        
        var secondCandidateMap: [Double : Int] = [:]

        for number in arr {
            
            if secondCandidateMap[Double(number)/ratio] != nil {
                total += secondCandidateMap[Double(number)/ratio]!
            }
            
            if firstCandidateMap[Double(number)/ratio] != nil {
                if secondCandidateMap[Double(number)] == nil {
                    secondCandidateMap[Double(number)] = firstCandidateMap[Double(number)/ratio]
                } else {
                    secondCandidateMap[Double(number)]! += firstCandidateMap[Double(number)/ratio]!
                }
            }
            
            if firstCandidateMap[Double(number)] == nil {
                firstCandidateMap[Double(number)] = 1
            } else {
                firstCandidateMap[Double(number)]! += 1
            }
        }
        
        return total
    }
    
    func testExample() {
        XCTAssertEqual(countTriplets(arr: [1,2,2,4], r: 2), 2)
        XCTAssertEqual(countTriplets(arr: [1,3,9,9,27,81], r: 3), 6)
        XCTAssertEqual(countTriplets(arr: [1,3,9,27,81,243], r: 3), 4)
    }
}
