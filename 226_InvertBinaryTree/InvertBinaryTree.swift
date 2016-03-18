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
    func invertTree(root: TreeNode?) -> TreeNode? {
        guard let rootNode = root else {
            return nil
        }

        if rootNode.left == nil && rootNode.right == nil {
            return rootNode
        }

        let tempLeftNode = rootNode.left
        rootNode.left = self.invertTree(rootNode.right)
        rootNode.right = self.invertTree(tempLeftNode)

        return rootNode
    }
}
