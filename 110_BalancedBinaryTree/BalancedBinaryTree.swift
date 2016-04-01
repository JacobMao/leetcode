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
    func isBalanced(root: TreeNode?) -> Bool {
        guard let rootNode = root else {
            return true
        }

        let heightOfLeftSubTree = self.treeHeight(rootNode.left)
        let heightOfRightSubTree = self.treeHeight(rootNode.right)

        let checkConditionOfTreeHeight = abs(heightOfLeftSubTree - heightOfRightSubTree) <= 1
        let isLeftSubTreeBalanced = self.isBalanced(rootNode.left)
        let isRightSubTreeBalanced = self.isBalanced(rootNode.right)

        return checkConditionOfTreeHeight && isLeftSubTreeBalanced && isRightSubTreeBalanced
    }

    // MARK: Private Methods
    private func treeHeight(root: TreeNode?) -> Int {
        guard let rootNode = root else {
            return 0
        }

        return 1 + max(self.treeHeight(rootNode.left), self.treeHeight(rootNode.right))
    }
}
