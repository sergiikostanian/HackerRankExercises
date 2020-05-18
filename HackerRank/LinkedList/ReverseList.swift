//
//  ReverseList.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 02.05.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class ReverseList: XCTestCase {

     class DoublyLinkedListNode {
        var data: Int
        var next: DoublyLinkedListNode?
        var prev: DoublyLinkedListNode?

        init(nodeData: Int, next: DoublyLinkedListNode? = nil, prev: DoublyLinkedListNode? = nil) {
            self.data = nodeData
            self.next = next
            self.prev = prev
        }
        
        func append(_ newNode: DoublyLinkedListNode) {
            var node: DoublyLinkedListNode? = self
            while node?.next != nil {
                node = node?.next
            }
            node?.next = newNode
            newNode.prev = node
        }
        
        func toArray() -> [Int] {
            var arr: [Int] = []
            var node: DoublyLinkedListNode? = self
            while node != nil {
                arr.append(node!.data)
                node = node?.next
            }
            return arr
        }
    }

    func reverse(llist: DoublyLinkedListNode?) -> DoublyLinkedListNode? {
        var node = llist
        var newHead: DoublyLinkedListNode?
        while node != nil {
            let prevNode = node?.prev
            let nextNode = node?.next
            node?.next = prevNode
            node?.prev = nextNode
            
            newHead = node
            node = node?.prev
        }
        return newHead
    }
    
    func testExample() throws {
        let llist = DoublyLinkedListNode(nodeData: 1)
        llist.append(DoublyLinkedListNode(nodeData: 2))
        llist.append(DoublyLinkedListNode(nodeData: 3))
        llist.append(DoublyLinkedListNode(nodeData: 4))
        
        let resultList = reverse(llist: llist)
        
        XCTAssertEqual(resultList?.toArray(), [4, 3, 2, 1]) 
    }

}
