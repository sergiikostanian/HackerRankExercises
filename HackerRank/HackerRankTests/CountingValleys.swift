//
//  CountingValleys.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 11.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

/**
 Gary is an avid hiker. He tracks his hikes meticulously, paying close attention to small details like topography. During his last hike he took exactly  steps. For every step he took, he noted if it was an uphill, , or a downhill,  step. Gary's hikes start and end at sea level and each step up or down represents a  unit change in altitude. We define the following terms:

 A mountain is a sequence of consecutive steps above sea level, starting with a step up from sea level and ending with a step down to sea level.
 A valley is a sequence of consecutive steps below sea level, starting with a step down from sea level and ending with a step up to sea level.
 Given Gary's sequence of up and down steps during his last hike, find and print the number of valleys he walked through.

 For example, if Gary's path is , he first enters a valley  units deep. Then he climbs out an up onto a mountain  units high. Finally, he returns to sea level and ends his hike.

 Function Description

 Complete the countingValleys function in the editor below. It must return an integer that denotes the number of valleys Gary traversed.

 countingValleys has the following parameter(s):

 n: the number of steps Gary takes
 s: a string describing his path
 */
class CountingValleys: XCTestCase {

    func countingValleys(n: Int, s: String) -> Int {
        var valleysCount = 0
        var seeLevel = 0
        
        for char in s {
            if char == "U" {
                seeLevel += 1
            } else if char == "D" {
                seeLevel -= 1
                if seeLevel == -1 {
                    valleysCount += 1
                }
            }
        }
        return valleysCount
    }

    override func setUp() {
    }

    override func tearDown() {
    }

    func testExample() {
        XCTAssertEqual(countingValleys(n: 8, s: "UDDDUDUU"), 1)
        XCTAssertEqual(countingValleys(n: 8, s: "DDUUUUDD"), 2)
        XCTAssertEqual(countingValleys(n: 10, s: "UDUUUDUDDD"), 0)
    }
    
}
