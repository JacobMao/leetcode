/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
     }
 }


class Solution {
    func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let pNode = p, let qNode = q else {
            if p == nil && q == nil {
                return true
            } else {
                return false
            }
        }

        let resultOfComparingValue = pNode.val == qNode.val
        let resultOfComparingLeftNode = self.isSameTree(pNode.left, qNode.left)
        let resultOfComparingRightNode = self.isSameTree(pNode.right, qNode.right)

        return resultOfComparingValue && resultOfComparingLeftNode && resultOfComparingRightNode
    }
}
