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
    func swapPairs(head: ListNode?) -> ListNode? {
        guard let headNode = head where headNode.next != nil else {
            return head
        }

        let secondNode = headNode.next
        let thirdNode = secondNode?.next

        secondNode?.next = headNode
        headNode.next = self.swapPairs(thirdNode)

        return secondNode
    }
}

let a = ListNode(1)
let b = ListNode(2)
let c = ListNode(3)
// let d = ListNode(4)

a.next = b
b.next = c
// c.next = d

let s = Solution()
let ret = s.swapPairs(a)

print("\(ret?.next?.next?.val)")
