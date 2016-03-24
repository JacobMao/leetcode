/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 * };
 */

#include <tuple>
#include <vector>
#include <algorithm>
#include <climits>
#include <iostream>

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

typedef std::tuple<int, TreeNode*> EulerNode;

class Solution {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
        if (root == NULL) {
            return NULL;
        }

        std::vector<EulerNode> nodeArray;
        int pIndex = -1;
        int qIndex = -1;
        this->eulerTourTree(root, p, q, 0, nodeArray, pIndex, qIndex);

        if (nodeArray.empty()
        || pIndex == -1
        || qIndex == -1) {
            return NULL;
        }



        TreeNode *ret = NULL;
        int currentLowestLevel = INT_MAX;
        int smallIndex = std::min(pIndex, qIndex);
        int bigIndex = std::max(pIndex, qIndex);
        for (int i = smallIndex; i <= bigIndex; ++i) {
            EulerNode node = nodeArray[i];
            if (std::get<0>(node) < currentLowestLevel) {
                currentLowestLevel = std::get<0>(node);
                ret = std::get<1>(node);
            }
        }

        return ret;
    }
private:
    void eulerTourTree(TreeNode* root, TreeNode* p, TreeNode* q, int level,
        std::vector<EulerNode> &result, int &pIndex, int &qIndex) {
            if (root == NULL) {
                return;
            }

            result.push_back(std::make_tuple(level, root));

            if (root == p && pIndex == -1) {
                pIndex = result.size() - 1;
            }

            if (root == q && qIndex == -1) {
                qIndex = result.size() - 1;
            }

            if (root->left != NULL) {
                this->eulerTourTree(root->left, p, q, level+1, result, pIndex, qIndex);
                result.push_back(std::make_tuple(level, root));
            }

            if (root->right != NULL) {
                this->eulerTourTree(root->right, p, q, level+1, result, pIndex, qIndex);
                result.push_back(std::make_tuple(level, root));
            }
    }
};

int main() {
    TreeNode a = TreeNode(2);
    TreeNode b = TreeNode(1);

    a.left = &b;

    Solution s = Solution();
    auto ret = s.lowestCommonAncestor(&a, &a, &b);

    std::cout << ret << std::endl;

    return 0;
}
