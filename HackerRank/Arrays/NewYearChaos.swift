//
//  NewYearChaos.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 13.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

/**
 It's New Year's Day and everyone's in line for the Wonderland rollercoaster ride! There are a number of people queued up, and each person wears a sticker indicating their initial position in the queue. Initial positions increment by  from  at the front of the line to  at the back.

Any person in the queue can bribe the person directly in front of them to swap positions. If two people swap positions, they still wear the same sticker denoting their original places in line. One person can bribe at most two others. For example, if  and  bribes , the queue will look like this: .

Fascinated by this chaotic queue, you decide you must know the minimum number of bribes that took place to get the queue into its current state!

Function Description

Complete the function minimumBribes in the editor below. It must print an integer representing the minimum number of bribes necessary, or Too chaotic if the line configuration is not possible.

minimumBribes has the following parameter(s):

q: an array of integers
 */
class NewYearChaos: XCTestCase {
    
    func minBribes(q: [Int]) {
        var totalBribes = 0
        
        var expectedFirst = 1
        var expectedSecond = 2
        var expectedThird = 3
        
        for i in 0..<q.count {
            if (q[i] == expectedFirst) {
                expectedFirst = expectedSecond
                expectedSecond = expectedThird
                expectedThird += 1
            } else if (q[i] == expectedSecond) {
                totalBribes += 1
                expectedSecond = expectedThird
                expectedThird += 1
            } else if (q[i] == expectedThird) {
                totalBribes += 2
                expectedThird += 1
            } else {
                print("Too chaotic")
                return
            }
        }
        print("\(totalBribes)")
    }

    func testExample() {
        minBribes(q: [5, 1, 2, 3, 7, 8, 6, 4])
        minBribes(q: [1, 2, 5, 3, 7, 8, 6, 4])
    }
}
