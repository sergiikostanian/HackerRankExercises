//
//  MarkAndToys.swift
//  HackerRankTests
//
//  Created by Sergii Kostanian on 18.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class MarkAndToys: XCTestCase {

    func maximumToys(prices: [Int], k: Int) -> Int {
        let sortedPrices = prices.sorted()
        var totalSpent = 0
        var numerOfToys = 0
        
        for price in sortedPrices {
            totalSpent += price
            if totalSpent < k {
                numerOfToys += 1
            } else {
                return numerOfToys
            }
        }
        return numerOfToys
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
