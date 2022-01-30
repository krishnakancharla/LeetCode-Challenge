class Solution:
    def spiralOrder(self, matrix: List[List[int]]) -> List[int]:
        #1,1 1,2 1,3 ] 2,3, 3,3,] 3,2,3,1 ] 2,1 ] 2,2
        res=[]
        
        left, right=0, len(matrix[0])
        top, bottom=0, len(matrix)
        
        while top<bottom and left<right:
            #left to right
            for i in range(left, right):
                res.append(matrix[top][i])
            top+=1
            #down to bottom
            for i in range(top, bottom):
                res.append(matrix[i][right-1])
            right-=1
            
            if not (top<bottom and left<right):
                break
            for i in range(right-1, left-1, -1):
                res.append(matrix[bottom-1][i])
            bottom-=1
            
            for i in range(bottom-1, top-1, -1):
                res.append(matrix[i][left])
            left+=1    
        return res
            
                
        
        