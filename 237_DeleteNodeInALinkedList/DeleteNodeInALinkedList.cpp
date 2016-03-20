/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */

#include <stddef.h>

 struct ListNode {
     int val;
     ListNode *next;
     ListNode(int x) : val(x), next(NULL) {}
 };


class Solution {
public:
    void deleteNode(ListNode* node) {
        if (node == NULL) {
            return;
        }

        ListNode *previousNode = NULL;
        while (node->next != NULL) {
            node->val = node->next->val;

            previousNode = node;
            node = node->next;
        }

        if (previousNode != NULL) {
            previousNode->next = NULL;
            delete(node);
            node = NULL;
        }
    }
};
