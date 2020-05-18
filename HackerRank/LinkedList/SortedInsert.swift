//
//  SortedInsert.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 02.05.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest


class SortedInsert: XCTestCase {

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
    }
    
    func sortedInsert(llist: DoublyLinkedListNode?, data: Int) -> DoublyLinkedListNode? {
        let newNode = DoublyLinkedListNode(nodeData: data)
        
        // Empty llist case
        guard llist != nil else {
            return newNode
        }
        
        // New node should be the head
        guard llist!.data < data else {
            llist?.prev = newNode
            newNode.next = llist
            return newNode
        }
        
        var currNode = llist
        while currNode != nil {
            if currNode!.data > data {
                currNode?.prev?.next = newNode
                newNode.prev = currNode!.prev
                newNode.next = currNode
                currNode!.prev = newNode
                return llist
            }
            if currNode!.next == nil {
                newNode.prev = currNode
                currNode!.next = newNode
                return llist
            }
            currNode = currNode?.next
        }
        
        return nil
    }
    
    func testExample() throws {
        let llist1 = DoublyLinkedListNode(nodeData: 1)
        llist1.append(DoublyLinkedListNode(nodeData: 3))
        llist1.append(DoublyLinkedListNode(nodeData: 4))
        llist1.append(DoublyLinkedListNode(nodeData: 10))
        
        let resultList1 = sortedInsert(llist: llist1, data: 5)
        
        XCTAssertEqual(resultList1?.next?.next?.next?.data, 5) 
        
        let llist2 = DoublyLinkedListNode(nodeData: 2)
        llist2.append(DoublyLinkedListNode(nodeData: 3))
        llist2.append(DoublyLinkedListNode(nodeData: 4))
        
        let resultList2 = sortedInsert(llist: llist2, data: 1)
        
        XCTAssertEqual(resultList2?.data, 1) 

    }
}
