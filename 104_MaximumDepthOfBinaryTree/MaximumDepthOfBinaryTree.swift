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
    func maxDepth(root: TreeNode?) -> Int {
        guard let rootNode = root else {
            return 0
        }

        let lDepth = self.maxDepth(rootNode.left)
        let rDepth = self.maxDepth(rootNode.right)

        return lDepth > rDepth ? lDepth + 1 : rDepth + 1
    }
}
