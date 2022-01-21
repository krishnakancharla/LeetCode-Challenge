# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def getDecimalValue(self, head: ListNode) -> int:
        #Traverse through the List
        #append to a list
        #make a string out of it
        #convert the int into decimal
        l=[]
        cur=head
        while cur:
            l.append(str(cur.val))
            cur=cur.next
        
        res="".join(l)
        res=int(res, 2)
        return res
            