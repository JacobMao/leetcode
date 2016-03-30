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
    func mergeTwoLists(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var smallerNode: ListNode? = nil

        if l1 == nil {
            return l2
        } else if l2 == nil {
            return l1
        } else {
            if l1!.val <= l2!.val {
                smallerNode = l1
                smallerNode?.next = self.mergeTwoLists(l1?.next, l2)
            } else {
                smallerNode = l2
                smallerNode?.next = self.mergeTwoLists(l1, l2?.next)
            }
        }

        return smallerNode
    }
}
