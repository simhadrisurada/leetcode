/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
ListNode* dummy = NULL;
class Solution {
public:
    ListNode* reverse(ListNode* head){
        if(head->next == NULL){
            dummy = head;
            return dummy;
        }
        ListNode* now = reverse(head->next);
        now->next = head;
        head->next = NULL;
        return head;
    }
    ListNode* reverseList(ListNode* head) {
        if(head == NULL) return head;
        reverse(head);
        ListNode* now = dummy;
        dummy = NULL;
        return now;
    }
};