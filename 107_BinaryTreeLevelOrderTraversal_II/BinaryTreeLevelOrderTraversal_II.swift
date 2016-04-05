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
    func levelOrderBottom(root: TreeNode?) -> [[Int]] {
        guard let rootNode = root else {
            return []
        }

        var ret: [[Int]] = []
        var values: [Int] = []
        var nodes: [TreeNode?] = []

        nodes.append(rootNode)
        nodes.append(nil)

        while !nodes.isEmpty {
            guard let currentNode = nodes.removeFirst() else {
                ret.append(values)

                if !nodes.isEmpty {
                    values.removeAll()
                    nodes.append(nil)
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

        return ret.reverse()
    }
}

let a = TreeNode(3)
let b = TreeNode(9)
let c = TreeNode(20)
let d = TreeNode(15)
let e = TreeNode(7)

a.left = b
a.right = c
c.left = d
c.right = e

let s = Solution()
print(s.levelOrderBottom(a))
