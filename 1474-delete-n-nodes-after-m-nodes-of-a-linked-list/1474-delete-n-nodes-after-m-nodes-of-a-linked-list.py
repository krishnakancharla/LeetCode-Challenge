# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def deleteNodes(self, head: ListNode, m: int, n: int) -> ListNode:
        curr = head
        count = 0
        while curr:
            count = 0
            prev = curr
            while count < m and curr:
                prev = curr
                curr = curr.next
                count += 1
            temp = curr
            count = 0
            while count < n and temp:
                temp = temp.next
                count += 1
            if prev: prev.next = temp
            curr = temp
        return head        
                
                
                