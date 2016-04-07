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
    private static let levelDelimiter: TreeNode? = nil

    func levelOrder(root: TreeNode?) -> [[Int]] {
        guard let rootNode = root else {
            return []
        }

        var ret: [[Int]] = []

        var nodes: [TreeNode?] = []
        nodes.append(rootNode)
        nodes.append(Solution.levelDelimiter)

        var values: [Int] = []
        while !nodes.isEmpty {
            guard let currentNode = nodes.removeFirst() else {
                ret.append(values)

                if !nodes.isEmpty {
                    values.removeAll()
                    nodes.append(Solution.levelDelimiter)
                }

                continue
            }

            values.append(currentNode.val)
            if currentNode.left != nil {
                nodes.append(currentNode.left)
            }
            if currentNode.right != nil {
                nodes.append(currentNode.right)
            }
        }

        return ret
    }
}
