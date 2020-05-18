//
//  InsertNode.swift
//  HackerRankTests
//
//  Created by Serhii Kostanian on 27.04.2020.
//  Copyright © 2020 Serg. All rights reserved.
//

import XCTest

class InsertNode: XCTestCase {

    class SinglyLinkedListNode {
        var data: Int
        var next: SinglyLinkedListNode?
        
        init(data: Int, next: SinglyLinkedListNode? = nil) {
            self.data = data
            self.next = next
        }
    }
    
    func insertNodeAtPosition(head: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
        var node: SinglyLinkedListNode? = head
        for _ in 0..<position-1 {
            node = node?.next
        }
        let newNode = SinglyLinkedListNode(data: data, next: node?.next)
        node?.next = newNode
        return head
    }

    func testExample() throws {
        let inputList = SinglyLinkedListNode(data: 16, next: 
        SinglyLinkedListNode(data: 13, next: 
        SinglyLinkedListNode(data: 7)))
        
        let expectedList = SinglyLinkedListNode(data: 16, next: 
        SinglyLinkedListNode(data: 13, next: 
        SinglyLinkedListNode(data: 1, next: 
        SinglyLinkedListNode(data: 7))))
        
        let outputList = insertNodeAtPosition(head: inputList, data: 1, position: 2)
        
        XCTAssertEqual(expectedList.next?.next?.data, outputList?.next?.next?.data)
    }

}
