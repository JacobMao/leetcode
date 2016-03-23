/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func reverseList(head: ListNode?) -> ListNode? {
        var currentNode = head
        var nextNode: ListNode?
        var preNode: ListNode?
        while currentNode != nil {
            nextNode = currentNode!.next

            currentNode!.next = preNode
            preNode = currentNode

            currentNode = nextNode
        }

        return preNode
    }
}
