class Solution:
    def countNegatives(self, grid: List[List[int]]) -> int:
        row=len(grid)
        col=len(grid[0])
        count=0
        i=0
        j=col-1
        while i<row and j>=0:
            if grid[i][j]<0:
                count=count + (row-i)
                j-=1
            else:
                i+=1
        return count