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
    func oddEvenList(head: ListNode?) -> ListNode? {
        if head?.next?.next == nil {
            return head
        }

        var lastOddNode = head
        let firstEvenNode = head?.next
        var lastEvenNode = head?.next

        while lastEvenNode?.next != nil {
            lastOddNode?.next = lastEvenNode?.next
            lastEvenNode?.next = lastOddNode?.next?.next
            lastOddNode?.next?.next = firstEvenNode

            lastOddNode = lastOddNode?.next
            lastEvenNode = lastEvenNode?.next
        }

        return head
    }
}
