//
//  HashTable.swift
//  HackerRank
//
//  Created by Sergii Kostanian on 15.03.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import Foundation

struct HashTable<Key: Hashable, Value> {
    private typealias Element = (key: Key, value: Value)
    private typealias Chain = [Element]
    
    private var chains: [Chain]
    
    init(capacity: Int) {
        chains = Array(repeating: [], count: capacity)
    }
    
    func set(key: Key, value: Value) {
        
    }
}
