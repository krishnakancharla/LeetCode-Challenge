class Solution:
    def setZeroes(self, matrix: List[List[int]]) -> None:
        #find indices
    
        # iterate over entire matrix to make the elements of the row and             column zero
        r=len(matrix)
        c=len(matrix[0])
        idx_r,idx_c = set(), set()       
        for i in range(r):
            for j in range(c):
                if matrix[i][j]==0:
                     idx_r.add(i)
                     idx_c.add(j)
                    
        for i in range(r):
            for j in range(c):
                if i in idx_r:
                    matrix[i][j]=0
                if j in idx_c:
                    matrix[i][j]=0
        
        """
        Do not return anything, modify matrix in-place instead.
        """
        