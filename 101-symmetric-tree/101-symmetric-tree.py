# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        if root is None:                    #if root does not exist
            return True                 #print Nothing
        return self.ismirror(root.left, root.right) 
        
        
    def ismirror(self, leftroot, rightroot): #defining function
            if leftroot and rightroot:           #if both roots exist 
                return leftroot.val==rightroot.val and      self.ismirror(leftroot.right,rightroot.left) and self.ismirror(rightroot.right,leftroot.left)
            return leftroot==rightroot
            
            
        