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
    func hasPathSum(root: TreeNode?, _ sum: Int) -> Bool {
        guard let rootNode = root else {
            return false
        }

        if rootNode.left == nil && rootNode.right == nil {
            return sum - rootNode.val == 0
        }

        return self.hasPathSum(rootNode.left, sum - rootNode.val)
            || self.hasPathSum(rootNode.right, sum - rootNode.val)
    }
}

let a = TreeNode(1)
let b = TreeNode(2)
a.left = b

let s = Solution()
print(s.hasPathSum(a, 1))
