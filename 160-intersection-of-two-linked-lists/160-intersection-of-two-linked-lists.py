# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def getIntersectionNode(self, headA: ListNode, headB: ListNode) -> Optional[ListNode]:
        cur=headA
        l=set()
        while cur:
            l.add((cur, cur.next))
            cur=cur.next
        
        cur2=headB
        while cur2:
            if (cur2, cur2.next) in l:
                return cur2
                
            cur2=cur2.next    
        return 
        
        