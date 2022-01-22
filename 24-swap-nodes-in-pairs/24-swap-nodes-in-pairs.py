# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def swapPairs(self, head: Optional[ListNode]) -> Optional[ListNode]:
        if (head == None) or (head.next == None) :
            return head 
        dummy = ListNode(0)
        
        prev, curr= dummy, head
        
        while curr and curr.next:
            nxtpair= curr.next.next
            second=curr.next
            
            #pair reversal
            second.next=curr
            curr.next=nxtpair
            prev.next=second
            
            prev=curr
            curr=nxtpair
        return dummy.next   
        