# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        dummy=ListNode(0)
        dummy.next=head
        
        fast=slow=dummy
        #n=n+1
        while n!=0:
            fast=fast.next
            n-=1
            
        while fast and fast.next:
            fast=fast.next
            slow=slow.next
            
        slow.next=slow.next.next
        #slow.next.val=slow.next.next.val
        
        return dummy.next
            
            
            