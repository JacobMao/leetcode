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
    func deleteDuplicates(head: ListNode?) -> ListNode? {
        var currentNode = head
        while currentNode?.next != nil {
            if currentNode!.val == currentNode!.next!.val {
                currentNode!.next = currentNode!.next!.next
            } else {
                currentNode = currentNode!.next
            }
        }

        return head
    }
}
