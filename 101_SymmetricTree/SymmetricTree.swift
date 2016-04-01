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
    func isSymmetric(root: TreeNode?) -> Bool {
        return self.compareSubTrees(root?.left, root?.right)
    }

    // MARK: Private Methods
    private func compareSubTrees(leftSubTree: TreeNode?, _ rightSubTree: TreeNode?) -> Bool {
        guard let leftRoot = leftSubTree, let rightRoot = rightSubTree else {
            return leftSubTree == nil && rightSubTree == nil
        }

        return leftRoot.val == rightRoot.val
        && self.compareSubTrees(leftRoot.left, rightRoot.right)
        && self.compareSubTrees(leftRoot.right, rightRoot.left)
    }
}

// let input = [2,3,3,4,5,5,4,-1,-1,8,9,9,8]



// let a: TreeNode? = TreeNode(1)
// let s = Solution()
// let ret = s.isSymmetric(a)
// print(ret)
