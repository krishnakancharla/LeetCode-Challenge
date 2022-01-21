# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        cur=head
        l=set()
        
        while cur:
            l.add(cur)
            cur = cur.next
            if cur in l:
                return True
        return False
    

            