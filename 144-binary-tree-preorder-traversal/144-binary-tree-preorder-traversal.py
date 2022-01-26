# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    
    def preorderTraversal(self, root: Optional[TreeNode]) -> List[int]:
        '''
        #Recursive    
        if not root:
            return []
        if root:
            return [root.val] + self.preorderTraversal(root.left) + self.preorderTraversal(root.right)
        '''
        stack=[]
        result=[]
    
        while root is not None or stack!=[]:
            while root:
                stack.append(root)
                result.append(root.val)
                root=root.left
            root=stack.pop()   
            root=root.right
         
        return result   
        