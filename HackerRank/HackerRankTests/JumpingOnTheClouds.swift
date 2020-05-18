//
//  JumpingOnTheClouds.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 12.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

/**
 Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus  or . She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.

 For each game, Emma will get an array of clouds numbered  if they are safe or  if they must be avoided. For example,  indexed from . The number on each cloud is its index in the list so she must avoid the clouds at indexes  and . She could follow the following two paths:  or . The first path takes  jumps while the second takes .

 Function Description

 Complete the jumpingOnClouds function in the editor below. It should return the minimum number of jumps required, as an integer.

 jumpingOnClouds has the following parameter(s):

 c: an array of binary integers
 Input Format

 The first line contains an integer , the total number of clouds. The second line contains  space-separated binary integers describing clouds  where .

 Output Format

 Print the minimum number of jumps needed to win the game.
 */
class JumpingOnTheClouds: XCTestCase {

    func jumpingOnClouds(c: [Int]) -> Int {
        var jumpCount = 0
        var currentCloudIndex = 0
        while currentCloudIndex < c.count {
            if (currentCloudIndex + 2) < c.count, c[currentCloudIndex + 2] == 0 { 
                currentCloudIndex += 2
            } else if (currentCloudIndex + 2) < c.count, c[currentCloudIndex + 1] == 0 {
                currentCloudIndex += 1
            } else if (currentCloudIndex + 1) < c.count, c[currentCloudIndex + 1] == 0 { // one before last
                currentCloudIndex += 1
            } else { // last
                currentCloudIndex += 1
                continue
            }
            jumpCount += 1
        }        
        return jumpCount 
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertEqual(jumpingOnClouds(c: [0, 0, 0, 0, 1, 0]), 3)
    }
}
