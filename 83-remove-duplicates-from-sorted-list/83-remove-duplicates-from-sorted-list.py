# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def deleteDuplicates(self, head: Optional[ListNode]) -> Optional[ListNode]:
        #curr_node=head
        #while cur and cur.next:
        #    if cur.val==cur.next.val:
        #        nxt=cur.next.next
        #       cur.next=nxt
        #    cur=cur.next
        #return head   
        #curr_node=head
        #curr_node=ListNode(0)
        
        if head == None:
            return head
        
        current = head.next
        prev = head
        
        while current != None:
            if current.val == prev.val:
                prev.next = current.next
                current = current.next
            else:
                current = current.next
                prev = prev.next
        
        return head