//
//  StockMaximize.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 28.12.2022.
//  Copyright © 2022 Serg. All rights reserved.
//

import XCTest

class StockMaximize: XCTestCase {

    func stockmax(prices: [Int]) -> Int {
        guard prices.count > 1 else { return 0 }

        var pricesToHandle = prices
        var balance = 0
        var sharesCount = 0

        while (!pricesToHandle.isEmpty) {

            guard let max = pricesToHandle.max() else { return balance }
            guard let maxIndex = pricesToHandle.firstIndex(of: max) else { return balance }

            let toBuy = pricesToHandle.prefix(upTo: maxIndex)

            guard !toBuy.isEmpty else {
                pricesToHandle = Array(pricesToHandle.dropFirst(1))
                continue
            }

            for i in 0..<toBuy.count {
                buy(price: toBuy[i], balance: &balance)
                sharesCount += 1
            }
            sell(price: max, count: sharesCount, balance: &balance)
            sharesCount = 0
            pricesToHandle = Array(pricesToHandle.dropFirst(toBuy.count + 1))

        }

        return balance
    }

    func buy(price: Int, balance: inout Int) {
        balance -= price
    }

    func sell(price: Int, count: Int, balance: inout Int) {
        balance += price * count
    }
    
    func testExample() throws {
        XCTAssertEqual(stockmax(prices: [5, 3, 2]), 0)
        XCTAssertEqual(stockmax(prices: [5, 2, 3]), 1)
        XCTAssertEqual(stockmax(prices: [1, 2, 100]), 197)
        XCTAssertEqual(stockmax(prices: [2, 1, 100]), 197)
        XCTAssertEqual(stockmax(prices: [1, 3, 1, 2]), 3)
    }

}
